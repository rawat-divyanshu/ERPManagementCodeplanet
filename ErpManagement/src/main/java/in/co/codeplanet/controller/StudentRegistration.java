package in.co.codeplanet.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import in.co.codeplanet.model.Batch;
import in.co.codeplanet.model.Course;
import in.co.codeplanet.model.EnrollStudent;
import in.co.codeplanet.model.FeePaymentOutput;
import in.co.codeplanet.model.StudentDetails;
import in.co.codeplanet.service.BatchService;
import in.co.codeplanet.service.CourseService;
import in.co.codeplanet.service.FeeSubmissionService;
import in.co.codeplanet.service.StudentRegistrationService;

@Controller
public class StudentRegistration {
	
	@Autowired
	StudentRegistrationService studentRegistrationService;
	
	@Autowired
	CourseService courseService;
	
	@Autowired
	BatchService batchService;
	
	@Autowired
	FeeSubmissionService feeSubmissionService;
	
	@RequestMapping(value = "register")
	public String register(HttpServletRequest request, HttpSession session, StudentDetails studentDetails) {
		if((String) session.getAttribute("createdBy") !=  null) {
			request.setAttribute("createdBy", (String) session.getAttribute("createdBy"));
			return "register";
		} else {
			return "index";
		}
	}
	
	@RequestMapping(value = "registerStudent")
	public String registerStudent(HttpServletRequest request, HttpSession session, StudentDetails studentDetails) {
		if((String) session.getAttribute("createdBy") !=  null) {
			request.setAttribute("createdBy", (String) session.getAttribute("createdBy"));
			int status = studentRegistrationService.registerStudent(studentDetails);
			request.setAttribute("status", status);
			return "register";
		} else {
			return "index";
		}
	}
	
	@RequestMapping(value = "enroll")
	public String enroll(HttpServletRequest request, HttpSession session, StudentDetails studentDetails) {
		if((String) session.getAttribute("createdBy") !=  null) {
			Course course = new Course();
			Batch batch = new Batch();
			request.setAttribute("createdBy", (String) session.getAttribute("createdBy"));
			List<Course> availableCourse=courseService.showavailableCourse(course);
			List<Batch> availableBatch=batchService.availableBatchDetail(batch);
			request.setAttribute("availableBatch",availableBatch);
			request.setAttribute("availableCourse",availableCourse);
			return "enroll";
		} else {
			return "index";
		}
	}
	
	
	@RequestMapping(value = "enrollStudent", method = RequestMethod.POST)
	public String EnrollStudent(HttpServletRequest request, HttpSession session, EnrollStudent enrollStudent) {
		if((String) session.getAttribute("createdBy") !=  null) {
			request.setAttribute("createdBy", (String) session.getAttribute("createdBy"));
			int Enrollment_Id = studentRegistrationService.enrollStudent(enrollStudent);
			if(Enrollment_Id == -1) {
				request.setAttribute("status", Enrollment_Id);
				Course course = new Course();
				Batch batch = new Batch();
				List<Course> availableCourse=courseService.showavailableCourse(course);
				List<Batch> availableBatch=batchService.availableBatchDetail(batch);
				request.setAttribute("availableBatch",availableBatch);
				request.setAttribute("availableCourse",availableCourse);
				return "enroll";
			}
			else if(Enrollment_Id == 0) {
				request.setAttribute("status", Enrollment_Id);
				Course course = new Course();
				Batch batch = new Batch();
				List<Course> availableCourse=courseService.showavailableCourse(course);
				List<Batch> availableBatch=batchService.availableBatchDetail(batch);
				request.setAttribute("availableBatch",availableBatch);
				request.setAttribute("availableCourse",availableCourse);
				return "enroll";
			} else {
				System.out.println(Enrollment_Id);
				enrollStudent.setEnrollmentId(String.valueOf(Enrollment_Id));
				FeePaymentOutput paymentDetails = feeSubmissionService.payFee(enrollStudent);
				request.setAttribute("paymentDetails", paymentDetails);
				return "feeReceipt";
			}
		} else {
			return "index";
		}
	}

}

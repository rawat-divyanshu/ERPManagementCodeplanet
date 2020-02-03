package in.co.codeplanet.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import in.co.codeplanet.model.EnrollStudent;
import in.co.codeplanet.model.FeePaymentOutput;
import in.co.codeplanet.service.FeeSubmissionService;

@Controller
public class FeeSubmissionController {

	@Autowired
	FeeSubmissionService feeSubmissionService;
	
	@RequestMapping(value = "feeDetails")
	public String feeDetails(HttpServletRequest request, HttpSession session, EnrollStudent enrollStudent) {
		if((String) session.getAttribute("createdBy") !=  null) {
			request.setAttribute("createdBy", (String) session.getAttribute("createdBy"));
			List<EnrollStudent> l = feeSubmissionService.getFeeDetails(enrollStudent);
			request.setAttribute("enrolledStudents", l);
			return "StudentFeeDetails";
		} else {
			return "index";
		}
	}
	
	@RequestMapping(value = "payfee", method = RequestMethod.POST)
	public String payFee(HttpServletRequest request, HttpSession session, EnrollStudent enrollStudent) {
		if((String) session.getAttribute("createdBy") !=  null) {
			request.setAttribute("createdBy", (String) session.getAttribute("createdBy"));			
			if(Double.parseDouble(enrollStudent.getAmountDeposited()) == Double.parseDouble(enrollStudent.getAmountRemaining())) {
				enrollStudent.setFeeStatus("1");
			}
			else {
				enrollStudent.setFeeStatus("0");
			}
			
			FeePaymentOutput paymentDetails = feeSubmissionService.payFee(enrollStudent);
			request.setAttribute("paymentDetails", paymentDetails);
			
			return "feeReceipt";
		} else {
			return "index";
		}
	}
	
	@RequestMapping(value = "studentFeeDetails", method = RequestMethod.POST)
	public String studentFeeDetails(HttpServletRequest request, HttpSession session, EnrollStudent enrollStudent) {
		if((String) session.getAttribute("createdBy") !=  null) {
			request.setAttribute("createdBy", (String) session.getAttribute("createdBy"));
			List<EnrollStudent> studentFeeDetail = feeSubmissionService.getFeeDetails(enrollStudent.getEmailId());
			List<EnrollStudent> l = feeSubmissionService.getFeeDetails(enrollStudent);
			request.setAttribute("enrolledStudents", l);
			request.setAttribute("studentFeeDetail", studentFeeDetail);
			request.setAttribute("studentSearch", "1");
			return "StudentFeeDetails";
		} else {
			return "index";
		}
	}
	
	@RequestMapping(value = "generateFeeReceipt", method = RequestMethod.POST)
	public String generateFeeReceipt(HttpServletRequest request, HttpSession session, EnrollStudent enrollStudent) {
		if((String) session.getAttribute("createdBy") !=  null) {
			request.setAttribute("createdBy", (String) session.getAttribute("createdBy"));
			List<FeePaymentOutput> paymentDetails= feeSubmissionService.generateFeeReceipt(enrollStudent);
			return "generatedFeeReceipt";
		} else {
			return "index";
		}
	}
}

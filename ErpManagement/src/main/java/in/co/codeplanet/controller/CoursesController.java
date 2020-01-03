package in.co.codeplanet.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import in.co.codeplanet.model.Course;
import in.co.codeplanet.service.CourseService;

@Controller
public class CoursesController {

	
	@Autowired
	CourseService courseService;
	
	
	@RequestMapping(value="courses")
	public String courses(HttpServletRequest request, HttpSession session, Course course)
	{
		if((String) session.getAttribute("createdBy") != null) {
			request.setAttribute("createdBy",(String) session.getAttribute("createdBy"));
			List<Course> l=courseService.getCourseDetail();
			request.setAttribute("list", l);
			return "courses";
		} else {
			return "index";
		}
		
	}
	@RequestMapping(value="addCourse")
	public String addCourse(Course course, HttpSession session, HttpServletRequest request)
	{
		if((String) session.getAttribute("createdBy") != null) {
			request.setAttribute("createdBy",(String) session.getAttribute("createdBy"));
			boolean addstatus=courseService.addCourse(course);
			return "redirect:courses";
		} else {
			return "index";
		}
	}
	@RequestMapping(value="updateCourse")
	public String updateCourse(Course course, HttpSession session, HttpServletRequest request)
	{
		if((String) session.getAttribute("createdBy") != null) {
			request.setAttribute("createdBy",(String) session.getAttribute("createdBy"));
			int l=courseService.updateCourse(course);
			return "redirect:courses";
		} else {
			return "index";
		}
	}
	
	@RequestMapping(value="deleteCourse")
	public String deleteCourse(Course course, HttpSession session, HttpServletRequest request)
	{
		if((String) session.getAttribute("createdBy") != null) {
			request.setAttribute("createdBy",(String) session.getAttribute("createdBy"));
			boolean l=courseService.deleteCourse(course);
			return "redirect:courses";
		} else {
			return "index";
		}
	}
	@RequestMapping(value="inActiveCourse")
	public String inActiveCourse(Course course, HttpSession session, HttpServletRequest request)
	{
		if((String) session.getAttribute("createdBy") != null) {
			request.setAttribute("createdBy",(String) session.getAttribute("createdBy"));
			int l=courseService.inActiveCourse(course);
			return "redirect:courses";
		} else {
			return "index";
		}
	}
	@RequestMapping(value="activeCourse")
	public String activeCourse(Course course, HttpSession session, HttpServletRequest request)
	{
		if((String) session.getAttribute("createdBy") != null) {
			request.setAttribute("createdBy",(String) session.getAttribute("createdBy"));
			int l=courseService.activeCourse(course);
			return "redirect:courses";
		} else {
			return "index";
		}	
	}
	@RequestMapping(value="showavailable")
	public String showavailableCoures(HttpServletRequest request, HttpSession session, Course course)
	{
		if((String) session.getAttribute("createdBy") != null) {
			request.setAttribute("createdBy",(String) session.getAttribute("createdBy"));
			List<Course> l=courseService.showavailableCourse(course);
			request.setAttribute("list", l);
			return "courses";
		} else {
			return "index";
		}
	}
}

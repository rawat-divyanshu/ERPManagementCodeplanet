package in.co.codeplanet.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AttendanceController {
	
	@RequestMapping(value = "attendanceDetails", method = RequestMethod.POST)
	public String attendanceDetails(HttpServletRequest request, HttpSession session) {
		return "batchSelection";
	}

}

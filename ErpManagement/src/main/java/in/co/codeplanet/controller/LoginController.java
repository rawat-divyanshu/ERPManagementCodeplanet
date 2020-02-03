package in.co.codeplanet.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import in.co.codeplanet.model.SessionBean;
import in.co.codeplanet.model.User_Details;
import in.co.codeplanet.service.LoginService;

@Controller
public class LoginController {

	@Autowired
	LoginService loginService;

	@RequestMapping(value = "/")
	public String welcomePage(HttpServletRequest req, HttpSession session) {
		SessionBean sb = new SessionBean();
		sb.setHeaderKey("0");
		session.setAttribute("sessionBean", sb);
		return "index";
	}

	@RequestMapping(value = "chooselogin")
	public String chooseLogin(HttpServletRequest req, HttpSession session) {
		SessionBean sb = new SessionBean();
		sb.setHeaderKey("0");
		session.setAttribute("sessionBean", sb);
		return "chooseLogin";
	}

	@RequestMapping(value = "login")
	public String login(HttpServletRequest req, HttpSession session) {
		SessionBean sb = new SessionBean();
		sb.setHeaderKey("0");
		session.setAttribute("sessionBean", sb);
		req.setAttribute("key", req.getParameter("key"));
		return "login";
	}

	@RequestMapping(value = "mainLogin")
	public String mainLogin(HttpServletRequest req, HttpSession session, User_Details userDetails) {
		int userIdFlag = loginService.getUserLogin(userDetails);
		session.setAttribute("createdBy", String.valueOf(userIdFlag));
		req.setAttribute("key", userDetails.getKey());
		if (userIdFlag > 0) {
			req.setAttribute("createdBy", userIdFlag);
			return "admin";
		} else {
			if (userIdFlag == -1) {

				req.setAttribute("emailid", userDetails.getUserEmailId());
				req.setAttribute("msg1", "password Incorrect");
				return "login";
			} else {

				req.setAttribute("emailid", userDetails.getUserEmailId());
				req.setAttribute("msg", "Emailid Not Exist");
				return "login";
			}
		}

	}
	
	@RequestMapping(value="dashboard", method = RequestMethod.POST)
	public String dashboard(HttpServletRequest request, HttpSession session) {
		if((String) session.getAttribute("createdBy") !=  null) {
			request.setAttribute("createdBy", (String) session.getAttribute("createdBy"));
			return "admin";
		} else {
			return "index";
		}
	}

}

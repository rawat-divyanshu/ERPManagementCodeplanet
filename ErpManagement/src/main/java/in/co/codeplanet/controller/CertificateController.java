package in.co.codeplanet.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import in.co.codeplanet.model.Certificate;
import in.co.codeplanet.service.CertificateService;

@Controller
public class CertificateController {

	@Autowired
	CertificateService certificateService;
	
	
	@RequestMapping(value="certificate")
	public String certificate(Certificate certificate,HttpServletRequest request, HttpSession session)
	{
		if((String) session.getAttribute("createdBy") !=  null) {
			request.setAttribute("createdBy", request.getParameter("createdBy"));
			List<Certificate> l=certificateService.getCourseData();
			List<Certificate> l1=certificateService.getBatchData();
			request.setAttribute("list",l);
			request.setAttribute("list1",l1);
			return "selectUser";
		} else {
			return "index";
		}
	}
	@RequestMapping(value="findUser")
	public String findUser(HttpServletRequest request,Certificate certificate, HttpSession session)
	{
		if((String) session.getAttribute("createdBy") !=  null) {
			request.setAttribute("createdBy", request.getParameter("createdBy"));
			List<Certificate> l2=certificateService.getSelectedUser(certificate);
			List<Certificate> l=certificateService.getCourseData();
			List<Certificate> l1=certificateService.getBatchData();
			request.setAttribute("list",l);
			request.setAttribute("list1",l1);
			request.setAttribute("list2",l2);
			return "selectUser";
		} else {
			return "index";
		}
	}
	@RequestMapping(value="generateCertificate")
	public String generateCertificate(HttpServletRequest request, Certificate certificate, HttpSession session)
	{
		if((String) session.getAttribute("createdBy") !=  null) {
			System.out.println(certificate.getRegistrationNo());
			request.setAttribute("createdBy", request.getParameter("createdBy"));
			int l2=certificateService.insertCertificateDetails(certificate);
			List<Certificate> l=certificateService.getCourseData();
			List<Certificate> l1=certificateService.getBatchData();
			request.setAttribute("list",l);
			request.setAttribute("list1",l1);
			return "selectUser";
		} else {
			return "index";
		}
	}
}

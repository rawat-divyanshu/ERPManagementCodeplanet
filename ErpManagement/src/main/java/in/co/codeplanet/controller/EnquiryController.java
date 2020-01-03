package in.co.codeplanet.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import in.co.codeplanet.model.Enquiry_Details;
import in.co.codeplanet.model.SessionBean;
import in.co.codeplanet.service.EnquiryService;

@Controller
public class EnquiryController {
	
	
	@Autowired
	EnquiryService enquiryService;
	
    @RequestMapping(value="addEnquiry")
	public String addEnquiry(Enquiry_Details enquiry_details,HttpServletRequest request)
	{
    	int addEnquiryStatus=enquiryService.addEnquiryDetail(enquiry_details);
    	System.out.println(addEnquiryStatus);
    	request.setAttribute("Pk_Enquiry_Id",addEnquiryStatus);
    	
    	request.setAttribute("Full_Name", enquiry_details.getFull_Name());
    	request.setAttribute("College_Name", enquiry_details.getCollege_Name());
    	request.setAttribute("Branch", enquiry_details.getBranch());
    	request.setAttribute("Mobile_Number", enquiry_details.getMobile_Number());
    	request.setAttribute("Email_Id", enquiry_details.getEmail_Id());
    	request.setAttribute("Year_Passout", enquiry_details.getYear_Passout());
    	request.setAttribute("Interested_Courses", enquiry_details.getInterested_In_Course());
        return "Enquiry_Details";
	}
    

}

package in.co.codeplanet.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.co.codeplanet.dao.EnquiryDao;
import in.co.codeplanet.model.Enquiry_Details;

@Service
public class EnquiryServiceImpl implements EnquiryService{
	
	@Autowired
	EnquiryDao enquiryDao;

	@Override
	public int addEnquiryDetail(Enquiry_Details enquiry_details) {
		return enquiryDao.addEnquiryDetail(enquiry_details);
	}

}

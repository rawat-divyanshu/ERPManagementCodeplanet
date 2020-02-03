package in.co.codeplanet.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.co.codeplanet.dao.StudentRegistrationDao;
import in.co.codeplanet.model.EnrollStudent;
import in.co.codeplanet.model.StudentDetails;

@Service
public class StudentRegistrationServiceImpl implements StudentRegistrationService {
	
	@Autowired
	StudentRegistrationDao studentRegistrationDao;

	@Override
	public int registerStudent(StudentDetails studentDetails) {
		return studentRegistrationDao.registerStudent(studentDetails);
	}

	@Override
	public int enrollStudent(EnrollStudent enrollStudent) {
		return studentRegistrationDao.enrollStudent(enrollStudent);
	}

}

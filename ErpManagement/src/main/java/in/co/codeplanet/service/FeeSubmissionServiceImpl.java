package in.co.codeplanet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.co.codeplanet.dao.FeeSubmissionDao;
import in.co.codeplanet.model.EnrollStudent;
import in.co.codeplanet.model.FeePaymentOutput;

@Service
public class FeeSubmissionServiceImpl implements FeeSubmissionService {
	
	@Autowired
	FeeSubmissionDao feeSubmissionDao;

	@Override
	public List<EnrollStudent> getFeeDetails(EnrollStudent enrollStudent) {
		return feeSubmissionDao.getFeeDetails(enrollStudent);
	}

	@Override
	public FeePaymentOutput payFee(EnrollStudent enrollStudent) {
		return feeSubmissionDao.payFee(enrollStudent);
	}

	@Override
	public List<EnrollStudent> getFeeDetails(String emailId) {
		return feeSubmissionDao.getFeeDetails(emailId);
	}

	@Override
	public List<FeePaymentOutput> generateFeeReceipt(EnrollStudent enrollStudent) {
		return feeSubmissionDao.generateFeeReceipt(enrollStudent);
	}

}

package in.co.codeplanet.dao;

import java.util.List;

import in.co.codeplanet.model.EnrollStudent;
import in.co.codeplanet.model.FeePaymentOutput;

public interface FeeSubmissionDao {

	List<EnrollStudent> getFeeDetails(EnrollStudent enrollStudent);

	FeePaymentOutput payFee(EnrollStudent enrollStudent);

	List<EnrollStudent> getFeeDetails(String emailId);

	List<FeePaymentOutput> generateFeeReceipt(EnrollStudent enrollStudent);

}

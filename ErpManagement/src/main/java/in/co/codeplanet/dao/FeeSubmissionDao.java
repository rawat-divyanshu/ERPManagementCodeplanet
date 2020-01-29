package in.co.codeplanet.dao;

import java.util.List;

import in.co.codeplanet.model.EnrollStudent;

public interface FeeSubmissionDao {

	List<EnrollStudent> getFeeDetails(EnrollStudent enrollStudent);

	int payFee(EnrollStudent enrollStudent);

}

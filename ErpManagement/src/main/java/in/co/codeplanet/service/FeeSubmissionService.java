package in.co.codeplanet.service;

import java.util.List;

import in.co.codeplanet.model.EnrollStudent;

public interface FeeSubmissionService {

	List<EnrollStudent> getFeeDetails(EnrollStudent enrollStudent);

	int payFee(EnrollStudent enrollStudent);

}

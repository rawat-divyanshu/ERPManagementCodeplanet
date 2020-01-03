package in.co.codeplanet.service;

import java.util.List;

import in.co.codeplanet.model.Certificate;

public interface CertificateService {

	List<Certificate> getCourseData();

	List<Certificate> getBatchData();

	List<Certificate> getSelectedUser(Certificate certificate);

	int insertCertificateDetails(Certificate certificate);

}

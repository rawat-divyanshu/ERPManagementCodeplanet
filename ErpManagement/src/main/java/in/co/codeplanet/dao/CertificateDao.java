package in.co.codeplanet.dao;

import java.util.List;

import in.co.codeplanet.model.Certificate;

public interface CertificateDao {

	List<Certificate> getCourseData();

	List<Certificate> getBatchData();

	List<Certificate> getSelectedUser(Certificate certificate);

	int insertCertificateDetails(Certificate certificate);

}

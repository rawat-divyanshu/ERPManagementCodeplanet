package in.co.codeplanet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.co.codeplanet.dao.CertificateDao;
import in.co.codeplanet.model.Certificate;

@Service
public class CertificateServiceImpl implements CertificateService{
	
	@Autowired
	CertificateDao certificateDao;

	@Override
	public List<Certificate> getCourseData() {
		return certificateDao.getCourseData();
	}

	@Override
	public List<Certificate> getBatchData() {
		return certificateDao.getBatchData();
	}

	@Override
	public List<Certificate> getSelectedUser(Certificate certificate) {
		return certificateDao.getSelectedUser(certificate);
	}

	@Override
	public int insertCertificateDetails(Certificate certificate) {
		return certificateDao.insertCertificateDetails(certificate);
	}
	

}

package in.co.codeplanet.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.co.codeplanet.dao.LoginDao;
import in.co.codeplanet.model.User_Details;

@Service
public class LoginServiceImpl implements LoginService{

	@Autowired
	LoginDao loginDao;

	@Override
	public int getUserLogin(User_Details userDetails) {
		return loginDao.getUserLogin(userDetails);
	}
}

package in.co.codeplanet.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import in.co.codeplanet.model.User_Details;

@Repository
public class LoginDaoImpl implements LoginDao{

	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Override
	public int getUserLogin(User_Details userDetails) {
		int userIdStatus=0;
		final String procedureCall = "{call user_details(?,?,?,?,?,?,?)}";
		Connection connection = null;
		try {
			connection = jdbcTemplate.getDataSource().getConnection();
			CallableStatement callableSt = connection.prepareCall(procedureCall);
			callableSt.setString(1, "getUserLogin");
			callableSt.setString(2,null);
		    callableSt.setString(3, null);
			callableSt.setString(4, userDetails.getUserEmailId());
			callableSt.setString(5, null);
			callableSt.setInt(6, Integer.parseInt(userDetails.getKey()));
			callableSt.setString(7, null);
			
				ResultSet rs = callableSt.executeQuery();
				if (rs.next()) {
                     if(rs.getString("Password").equals(userDetails.getPassword()))
                     {
                    	 
                    	 userIdStatus = Integer.parseInt(rs.getString("Pk_User_Id"));
                    	 }
                     else
                     {
                    	 userIdStatus=-1;
                     }
						}
			       
				else {
					userIdStatus=0;
				}
			
		} catch (Exception e) {
			try {
				connection.rollback();
			} catch (Exception e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();

		}
		return userIdStatus;

	}

}

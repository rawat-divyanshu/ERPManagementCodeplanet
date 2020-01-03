package in.co.codeplanet.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import in.co.codeplanet.model.Enquiry_Details;

@Repository
public class EnquiryDaoImpl implements EnquiryDao {

	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Override
	public int addEnquiryDetail(Enquiry_Details enquiry_details) {
		int enquiryId=0;
		final String procedureCall = "{call enquiry_details(?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";
		Connection connection = null;
		try {
			connection = jdbcTemplate.getDataSource().getConnection();
			connection.setAutoCommit(false);
			CallableStatement callableSt = connection.prepareCall(procedureCall);
			callableSt.setString(1, "addEnquiryDetail");
			callableSt.setString(2,enquiry_details.getFull_Name());
			callableSt.setString(3, enquiry_details.getCollege_Name());
			callableSt.setString(4, enquiry_details.getMobile_Number());
			callableSt.setString(5, enquiry_details.getEmail_Id());
			callableSt.setInt(6, Integer.parseInt(enquiry_details.getYear_Passout()));
			callableSt.setString(7, enquiry_details.getBranch());
			callableSt.setString(8,null);
			callableSt.setString(9,enquiry_details.getPreferred_Batch_Timing());
			callableSt.setString(10,enquiry_details.getReference());
			callableSt.setString(11,enquiry_details.getAny_Comment());
			callableSt.setString(12,null);
			callableSt.setString(13,null);
			callableSt.setString(14,null);
			boolean insertFlag = callableSt.execute();
			connection.commit();
			if (insertFlag == true) {
				ResultSet rs = callableSt.getResultSet();
				if (rs.next()) {
					enquiryId = Integer.parseInt(rs.getString("Pk_Enquiry_Id"));
					final String procedureCall1 = "{call enquiry_details(?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";
					Connection connection1 = null;
					
					try {
						connection1 = jdbcTemplate.getDataSource().getConnection();
						CallableStatement callableSt1 = connection1.prepareCall(procedureCall1);
						for (int i = 0; i < enquiry_details.getInterested_In_Course().length; i++) {
							callableSt1.setString(1, "addEnquiryCourses");
							callableSt1.setString(2,null);
							callableSt1.setString(3, null);
							callableSt1.setString(4, null);
							callableSt1.setString(5, null);
							callableSt1.setInt(6, 0);
							callableSt1.setString(7, null);
							callableSt1.setString(8,enquiry_details.getInterested_In_Course()[i]);
							callableSt1.setString(9,null);
							callableSt1.setString(10,null);
							callableSt1.setString(11,null);
							callableSt1.setString(12,null);
							callableSt1.setString(13,null);
							callableSt1.setInt(14,enquiryId);
							callableSt1.addBatch();
							}
							callableSt1.executeBatch();
					}
					catch(Exception e1)
					{
						e1.printStackTrace();
					}
				}
			} else {
				enquiryId = 0;
			}
			
			
		} catch (Exception e) {
			try {
				connection.rollback();
			} catch (Exception e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();

		}
		return enquiryId;

	}
	

}

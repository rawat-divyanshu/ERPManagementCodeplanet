package in.co.codeplanet.dao;

import java.sql.CallableStatement;
import java.sql.Connection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import in.co.codeplanet.model.EnrollStudent;
import in.co.codeplanet.model.StudentDetails;

@Repository
public class StudentRegistrationDaoImpl implements StudentRegistrationDao {
	
	@Autowired
	JdbcTemplate jdbcTemplate;

	@Override
	public int registerStudent(StudentDetails studentDetails) {
		int addStatus;
		final String procedureCall = "{call register(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";
		Connection connection = null;
		try {
			connection = jdbcTemplate.getDataSource().getConnection();
			connection.setAutoCommit(false);
			CallableStatement callableSt = connection.prepareCall(procedureCall);
			callableSt.setString(1, "registerStudent");			
			callableSt.setString(2, null);			
			callableSt.setString(3, studentDetails.getStudentName());			
			callableSt.setString(4, studentDetails.getFatherName());			
			callableSt.setString(5, studentDetails.getMobileNo());			
			callableSt.setString(6, studentDetails.getEmailId());			
			callableSt.setString(7, studentDetails.getCollegeName());			
			callableSt.setInt(8, Integer.parseInt(studentDetails.getYearOfStudying()));			
			callableSt.setString(9, studentDetails.getBranch());			
			callableSt.setInt(10, Integer.parseInt(studentDetails.getPassoutYear()));	
			callableSt.setString(11, null);			
			callableSt.setString(12, null);			
			callableSt.setString(13, null);			
			callableSt.setString(14, null);
			callableSt.setInt(15, Integer.parseInt(studentDetails.getCreatedBy()));
			callableSt.setString(16, null);
			callableSt.setString(17, null);
			callableSt.setString(18, null);
			callableSt.setString(19, null);
			callableSt.setString(20, null);
			
			addStatus = callableSt.executeUpdate();

			connection.commit();
		}
		catch(Exception e) {
			addStatus = -1;
			try {
				connection.rollback();
			} catch (Exception e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();			
		}
		return addStatus;
	}

	@Override
	public int enrollStudent(EnrollStudent enrollStudent) {
		int enrollStatus;
		final String procedureCall = "{call register(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";
		Connection connection = null;
		try {
			connection = jdbcTemplate.getDataSource().getConnection();
			connection.setAutoCommit(false);
			CallableStatement callableSt = connection.prepareCall(procedureCall);
			callableSt.setString(1, "enrollStudent");			
			callableSt.setString(2, null);			
			callableSt.setString(3, null);			
			callableSt.setString(4, null);			
			callableSt.setString(5, null);			
			callableSt.setString(6, enrollStudent.getEmailId());			
			callableSt.setString(7, null);			
			callableSt.setString(8, null);			
			callableSt.setString(9, null);			
			callableSt.setString(10, null);			
			callableSt.setString(11, null);			
			callableSt.setString(12, null);			
			callableSt.setString(13, null);			
			callableSt.setString(14, null);			
			callableSt.setInt(15, Integer.parseInt(enrollStudent.getCreatedBy()));
			callableSt.setInt(16, Integer.parseInt(enrollStudent.getCourseId()));
			callableSt.setInt(17, Integer.parseInt(enrollStudent.getBatchId()));
			callableSt.setDouble(18, Double.parseDouble(enrollStudent.getCourseFee()));
			callableSt.setInt(19, Integer.parseInt(enrollStudent.getFeePaymentType()));
			callableSt.setDouble(20, Double.parseDouble(enrollStudent.getAmountDeposited()));
			
			enrollStatus = callableSt.executeUpdate();
			

			connection.commit();
		}
		catch(Exception e) {
			enrollStatus = -2;
			try {
				connection.rollback();
			} catch (Exception e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();			
		}
		System.out.println(enrollStatus);
		return enrollStatus;
	}

}

package in.co.codeplanet.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import in.co.codeplanet.model.EnrollStudent;

@Repository
public class FeeSubmissionDaoImpl implements FeeSubmissionDao {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Override
	public List<EnrollStudent> getFeeDetails(EnrollStudent enrollStudent) {
		List<EnrollStudent> enrolledStudents = new ArrayList<EnrollStudent>();
		final String procedureCall = "{call register(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";
		Connection connection = null;
		try {
			connection = jdbcTemplate.getDataSource().getConnection();
			connection.setAutoCommit(false);
			CallableStatement callableSt = connection.prepareCall(procedureCall);
			callableSt.setString(1, "feeDetails");			
			callableSt.setString(2, null);			
			callableSt.setString(3, null);			
			callableSt.setString(4, null);			
			callableSt.setString(5, null);			
			callableSt.setString(6, null);			
			callableSt.setString(7, null);			
			callableSt.setString(8, null);			
			callableSt.setString(9, null);			
			callableSt.setString(10, null);	
			callableSt.setString(11, null);			
			callableSt.setString(12, null);			
			callableSt.setString(13, null);			
			callableSt.setString(14, null);
			callableSt.setString(15, null);
			callableSt.setString(16, null);
			callableSt.setString(17, null);
			callableSt.setString(18, null);
			callableSt.setString(19, null);
			callableSt.setString(20, null);
			callableSt.setString(21, null);
			
			boolean status=callableSt.execute();
			if(status == true) {
				ResultSet rs = callableSt.getResultSet();
				while(rs.next())
				{
					EnrollStudent student = new EnrollStudent();
					student.setEnrollmentId(String.valueOf(rs.getInt("Enrollment_Id")));
					student.setStudentId(String.valueOf(rs.getInt("Pk_Student_Id")));
					student.setStudentName(rs.getString("Student_Name"));
					student.setCourseId(String.valueOf(rs.getString("Course_Id")));
					student.setCourseName(rs.getString("Course_Name"));
					student.setBatchId(String.valueOf("Batch_Id"));
					student.setBatchName(rs.getString("Batch_Name"));
					student.setCourseFee(String.valueOf(rs.getDouble("Total_Fee")));
					student.setAmountDeposited(String.valueOf(rs.getDouble("Fee_Deposited")));
					student.setAmountRemaining(String.valueOf(rs.getDouble("Fee_Remaining")));
					student.setNextPaymentDate(String.valueOf(rs.getDate("Next_Deposit_Date")));
					student.setFeeStatus(String.valueOf(rs.getInt("Fee_Status")));
					enrolledStudents.add(student);
				}
			}

			connection.commit();
		}
		catch(Exception e) {
			enrolledStudents = null;
			try {
				connection.rollback();
			} catch (Exception e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();			
		}
		return enrolledStudents;
	}

	@Override
	public int payFee(EnrollStudent enrollStudent) {
		int status;
		final String procedureCall = "{call feepayment(?,?,?,?)}";
		Connection connection = null;
		try {
			connection = jdbcTemplate.getDataSource().getConnection();
			connection.setAutoCommit(false);
			CallableStatement callableSt = connection.prepareCall(procedureCall);
			callableSt.setString(1, "payfee");			
			callableSt.setInt(2, Integer.parseInt(enrollStudent.getEnrollmentId()));			
			callableSt.setDouble(3, Double.parseDouble(enrollStudent.getAmountDeposited()));		
			callableSt.setInt(4, Integer.parseInt(enrollStudent.getFeeStatus()));		
			
			status = callableSt.executeUpdate();
			connection.commit();
		}
		catch(Exception e) {
			status = -1;
			try {
				connection.rollback();
			} catch (Exception e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();			
		}
		return status;
	}

}

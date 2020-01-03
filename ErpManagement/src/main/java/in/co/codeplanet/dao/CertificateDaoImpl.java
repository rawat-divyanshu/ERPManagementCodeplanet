package in.co.codeplanet.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import in.co.codeplanet.model.Batch;
import in.co.codeplanet.model.Certificate;

@Repository
public class CertificateDaoImpl implements CertificateDao{
	
	@Autowired
	JdbcTemplate jdbcTemplate;

	@Override
	public List<Certificate> getCourseData() {
		List<Certificate> l=new ArrayList<Certificate>();
		final String procedureCall = "{call certificate(?,?,?,?,?,?,?,?,?)}";
		Connection connection = null;
		try {
			connection = jdbcTemplate.getDataSource().getConnection();
			connection.setAutoCommit(false);
			CallableStatement callableSt = connection.prepareCall(procedureCall);
			callableSt.setString(1, "getCourseData");
			callableSt.setString(2,null);
			callableSt.setString(3, null);
			callableSt.setString(4, null);
			callableSt.setString(5, null);
			callableSt.setInt(6, 0);
			callableSt.setString(7, null);
			callableSt.setString(8, null);
			callableSt.setString(9, null);
			ResultSet rs=callableSt.executeQuery();
			while(rs.next())
			{
				Certificate b=new Certificate();
			    b.setCourseId(Integer.toString(rs.getInt("Pk_Course_Id")));
			    b.setCourseName(rs.getString("Course_Name"));
				l.add(b);
			}
			connection.commit();
		}
		 catch (Exception e) {
			try {
				connection.rollback();
			} catch (Exception e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();

		}
		return l;

	}

	@Override
	public List<Certificate> getBatchData() {
		List<Certificate> l=new ArrayList<Certificate>();
		final String procedureCall = "{call certificate(?,?,?,?,?,?,?,?,?)}";
		Connection connection = null;
		try {
			connection = jdbcTemplate.getDataSource().getConnection();
			connection.setAutoCommit(false);
			CallableStatement callableSt = connection.prepareCall(procedureCall);
			callableSt.setString(1, "getBatchData");
			callableSt.setString(2,null);
			callableSt.setString(3, null);
			callableSt.setString(4, null);
			callableSt.setString(5, null);
			callableSt.setInt(6, 0);
			callableSt.setString(7, null);
			callableSt.setString(8, null);
			callableSt.setString(9, null);
			ResultSet rs=callableSt.executeQuery();
			while(rs.next())
			{
				Certificate b=new Certificate();
			    b.setBatchId(Integer.toString(rs.getInt("Pk_Batch_Id")));
			    b.setBatchName(rs.getString("Batch_Name"));
				l.add(b);
			}
			connection.commit();
		}
		 catch (Exception e) {
			try {
				connection.rollback();
			} catch (Exception e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();

		}
		return l;


	}

	@Override
	public List<Certificate> getSelectedUser(Certificate certificate) {
		List<Certificate> l=new ArrayList<Certificate>();
		final String procedureCall = "{call certificate(?,?,?,?,?,?,?,?,?)}";
		Connection connection = null;
		try {
			connection = jdbcTemplate.getDataSource().getConnection();
			connection.setAutoCommit(false);
			CallableStatement callableSt = connection.prepareCall(procedureCall);
			callableSt.setString(1, "findUser");
			callableSt.setString(2,null);
			callableSt.setInt(3, Integer.parseInt(certificate.getBatchId()));
			callableSt.setInt(4, Integer.parseInt(certificate.getCourseId()));
			callableSt.setString(5, null);
			callableSt.setInt(6, 0);
			callableSt.setString(7, null);
			callableSt.setString(8, null);
			callableSt.setString(9, null);
			ResultSet rs=callableSt.executeQuery();
			System.out.println(rs);
			while(rs.next())
			{
				Certificate b=new Certificate();
				System.out.println(rs.getInt("Pk_Student_Id")+" "+rs.getString(6));
			   b.setStudentId(Integer.toString(rs.getInt("Pk_Student_Id")));
				b.setEnrollmentId(Integer.toString(rs.getInt("Enrollment_Id")));
			   b.setCourseName(rs.getString("Course_Name"));
			   b.setRegistrationNo(rs.getString(6));
			   b.setStudentName(rs.getString("Student_Name"));
			   b.setFatherName(rs.getString("Father_Name"));
				l.add(b);
			}
			connection.commit();
		}
		 catch (Exception e) {
			try {
				connection.rollback();
			} catch (Exception e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();

		}
		return l;


	}

	@Override
	public int insertCertificateDetails(Certificate certificate) {
		int l=0;
		final String procedureCall = "{call certificate(?,?,?,?,?,?,?,?,?)}";
		Connection connection = null;
		try {
			connection = jdbcTemplate.getDataSource().getConnection();
			connection.setAutoCommit(false);
			CallableStatement callableSt = connection.prepareCall(procedureCall);
			callableSt.setString(1, "insertCertificate");
			callableSt.setString(2,null);
			callableSt.setString(3, null);
			callableSt.setString(4, null);
			callableSt.setInt(5, Integer.parseInt(certificate.getEnrollmentId()));
			callableSt.setString(6, certificate.getCourseDurationFrom());
			callableSt.setString(7, certificate.getCourseTill());
			callableSt.setInt(8, Integer.parseInt(certificate.getIssuedBy()));
			callableSt.setString(9, certificate.getRegistrationNo());
			boolean insertFlag=callableSt.execute();
		    if(insertFlag==true)
		    	l=1;
			connection.commit();
		}
		 catch (Exception e) {
			try {
				connection.rollback();
			} catch (Exception e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();

		}
		return l;

	}
	

}

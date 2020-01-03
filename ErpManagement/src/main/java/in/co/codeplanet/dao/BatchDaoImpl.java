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
import in.co.codeplanet.model.Course;

@Repository
public class BatchDaoImpl implements BatchDao{

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	
	@Override
	public List<Batch> getBatchDetail() {
		List<Batch> l=new ArrayList<Batch>();
		final String procedureCall = "{call batch_details(?,?,?,?,?,?,?,?)}";
		Connection connection = null;
		try {
			connection = jdbcTemplate.getDataSource().getConnection();
			connection.setAutoCommit(false);
			CallableStatement callableSt = connection.prepareCall(procedureCall);
			callableSt.setString(1, "getBatchDetail");
			callableSt.setString(2,null);
			callableSt.setString(3, null);
			callableSt.setString(4, null);
			callableSt.setString(5, null);
			callableSt.setInt(6, 0);
			callableSt.setString(7, null);
			callableSt.setString(8, null);
			ResultSet rs=callableSt.executeQuery();
			while(rs.next())
			{
				Batch b=new Batch();
				b.setBatchId(Integer.toString(rs.getInt("Pk_Batch_Id")));
				b.setBatchName(rs.getString("Batch_Name"));
				b.setSessionId(Integer.toString(rs.getInt("Fk_Session_Id")));
				b.setFacultyId(Integer.toString(rs.getInt("Fk_Faculty_Id")));
				b.setBatchTiming(rs.getString("Batch_Timing"));
				b.setIsActive(Integer.toString(rs.getInt("Is_Active")));
				b.setSessionName(rs.getString("Session_Name"));
				b.setFacultyName(rs.getString("User_Name"));
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
	public List<Batch> getSessionDetail() {
		List<Batch> l=new ArrayList<Batch>();
		final String procedureCall = "{call batch_details(?,?,?,?,?,?,?,?)}";
		Connection connection = null;
		try {
			connection = jdbcTemplate.getDataSource().getConnection();
			connection.setAutoCommit(false);
			CallableStatement callableSt = connection.prepareCall(procedureCall);
			callableSt.setString(1, "getSessionDetail");
			callableSt.setString(2,null);
			callableSt.setString(3, null);
			callableSt.setString(4, null);
			callableSt.setString(5, null);
			callableSt.setInt(6, 0);
			callableSt.setString(7, null);
			callableSt.setString(8, null);
			ResultSet rs=callableSt.executeQuery();
			while(rs.next())
			{
				Batch b=new Batch();
				b.setSessionId(Integer.toString(rs.getInt("Pk_Session_Id")));
				b.setSessionName(rs.getString("Session_Name"));
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
	public List<Batch> getFacultyDetail() {
		List<Batch> l=new ArrayList<Batch>();
		final String procedureCall = "{call batch_details(?,?,?,?,?,?,?,?)}";
		Connection connection = null;
		try {
			connection = jdbcTemplate.getDataSource().getConnection();
			connection.setAutoCommit(false);
			CallableStatement callableSt = connection.prepareCall(procedureCall);
			callableSt.setString(1, "getFacultyDetail");
			callableSt.setString(2,null);
			callableSt.setString(3, null);
			callableSt.setString(4, null);
			callableSt.setString(5, null);
			callableSt.setInt(6, 0);
			callableSt.setString(7, null);
			callableSt.setString(8, null);
			ResultSet rs=callableSt.executeQuery();
			while(rs.next())
			{
				Batch b=new Batch();
				b.setFacultyId(Integer.toString(rs.getInt("Pk_User_Id")));
				b.setFacultyName(rs.getString("User_Name"));
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
	public boolean addBatchDetail(Batch batch) {
		boolean insertFlag = false;
		final String procedureCall = "{call batch_details(?,?,?,?,?,?,?,?)}";
		Connection connection = null;
		try {
			connection = jdbcTemplate.getDataSource().getConnection();
			connection.setAutoCommit(false);
			CallableStatement callableSt = connection.prepareCall(procedureCall);
			callableSt.setString(1, "addBatchDetail");
			callableSt.setString(2,null);
			callableSt.setString(3, batch.getBatchName());
			callableSt.setString(4, batch.getBatchTiming());
			callableSt.setInt(5,Integer.parseInt(batch.getSessionId()) );
			callableSt.setInt(6, Integer.parseInt(batch.getFacultyId()));
			callableSt.setInt(7, Integer.parseInt(batch.getCreatedBy()));
			callableSt.setString(8, null);
			insertFlag = callableSt.execute();
			connection.commit();
		}
		 catch (Exception e) {
			 insertFlag = false;
			try {
				connection.rollback();
			} catch (Exception e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();

		}
		return insertFlag;

	}


	@Override
	public int updateBatchDetail(Batch batch) {
		int updateFlag = 0;
		final String procedureCall = "{call batch_details(?,?,?,?,?,?,?,?)}";
		Connection connection = null;
		try {
			connection = jdbcTemplate.getDataSource().getConnection();
			connection.setAutoCommit(false);
			CallableStatement callableSt = connection.prepareCall(procedureCall);
			callableSt.setString(1, "updateBatchDetail");
			callableSt.setInt(2,Integer.parseInt(batch.getBatchId()));
			callableSt.setString(3, batch.getBatchName());
			callableSt.setString(4, batch.getBatchTiming());
			callableSt.setInt(5,Integer.parseInt(batch.getSessionId()) );
			callableSt.setInt(6, Integer.parseInt(batch.getFacultyId()));
			callableSt.setInt(7, 0);
			callableSt.setInt(8, Integer.parseInt(batch.getModifiedBy()));
			updateFlag = callableSt.executeUpdate();
			connection.commit();
		}
		 catch (Exception e) {
			 updateFlag = 0;
			try {
				connection.rollback();
			} catch (Exception e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
		return updateFlag;
	}


	@Override
	public List<Batch> availableBatchDetail(Batch batch) {
		List<Batch> l=new ArrayList<Batch>();
		final String procedureCall = "{call batch_details(?,?,?,?,?,?,?,?)}";
		Connection connection = null;
		try {
			connection = jdbcTemplate.getDataSource().getConnection();
			connection.setAutoCommit(false);
			CallableStatement callableSt = connection.prepareCall(procedureCall);
			callableSt.setString(1, "getAvailableBatchDetail");
			callableSt.setString(2,null);
			callableSt.setString(3, null);
			callableSt.setString(4, null);
			callableSt.setString(5, null);
			callableSt.setInt(6, 0);
			callableSt.setString(7, null);
			callableSt.setString(8, null);
			ResultSet rs=callableSt.executeQuery();
			while(rs.next())
			{
				Batch b=new Batch();
				b.setBatchId(Integer.toString(rs.getInt("Pk_Batch_Id")));
				b.setBatchName(rs.getString("Batch_Name"));
				b.setSessionId(Integer.toString(rs.getInt("Fk_Session_Id")));
				b.setFacultyId(Integer.toString(rs.getInt("Fk_Faculty_Id")));
				b.setBatchTiming(rs.getString("Batch_Timing"));
				b.setIsActive(Integer.toString(rs.getInt("Is_Active")));
				b.setSessionName(rs.getString("Session_Name"));
				b.setFacultyName(rs.getString("User_Name"));
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
	public boolean deleteBatchDetail(Batch batch) {
		boolean deleteFlag = false;
		final String procedureCall = "{call batch_details(?,?,?,?,?,?,?,?)}";
		Connection connection = null;
		try {
			connection = jdbcTemplate.getDataSource().getConnection();
			connection.setAutoCommit(false);
			CallableStatement callableSt = connection.prepareCall(procedureCall);
			callableSt.setString(1, "deleteBatchDetail");
			callableSt.setInt(2,Integer.parseInt(batch.getBatchId()));
			callableSt.setString(3, null);
			callableSt.setString(4, null);
			callableSt.setInt(5,0 );
			callableSt.setInt(6, 0);
			callableSt.setInt(7,0);
			callableSt.setString(8, null);
			deleteFlag = callableSt.execute();
			connection.commit();
		}
		 catch (Exception e) {
			 deleteFlag = false;
			try {
				connection.rollback();
			} catch (Exception e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
		return deleteFlag;


	}


	@Override
	public int inActiveBatchDetail(Batch batch) {
		int updateFlag = 0;
		final String procedureCall = "{call batch_details(?,?,?,?,?,?,?,?)}";
		Connection connection = null;
		try {
			connection = jdbcTemplate.getDataSource().getConnection();
			connection.setAutoCommit(false);
			CallableStatement callableSt = connection.prepareCall(procedureCall);
			callableSt.setString(1, "inActiveBatchDetail");
			callableSt.setInt(2,Integer.parseInt(batch.getBatchId()));
			callableSt.setString(3,null);
			callableSt.setString(4, null);
			callableSt.setInt(5,0);
			callableSt.setInt(6, 0);
			callableSt.setInt(7, 0);
			callableSt.setInt(8, Integer.parseInt(batch.getCreatedBy()));
			updateFlag = callableSt.executeUpdate();
			connection.commit();
		}
		 catch (Exception e) {
			 updateFlag = 0;
			try {
				connection.rollback();
			} catch (Exception e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();

		}
		return updateFlag;


	}


	@Override
	public int activeBatchDetail(Batch batch) {
		int updateFlag = 0;
		final String procedureCall = "{call batch_details(?,?,?,?,?,?,?,?)}";
		Connection connection = null;
		try {
			connection = jdbcTemplate.getDataSource().getConnection();
			connection.setAutoCommit(false);
			CallableStatement callableSt = connection.prepareCall(procedureCall);
			callableSt.setString(1, "activeBatchDetail");
			callableSt.setInt(2,Integer.parseInt(batch.getBatchId()));
			callableSt.setString(3,null);
			callableSt.setString(4, null);
			callableSt.setInt(5,0);
			callableSt.setInt(6, 0);
			callableSt.setInt(7, 0);
			callableSt.setInt(8, Integer.parseInt(batch.getCreatedBy()));
			updateFlag = callableSt.executeUpdate();
			connection.commit();
		}
		 catch (Exception e) {
			 updateFlag = 0;
			try {
				connection.rollback();
			} catch (Exception e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();

		}
		return updateFlag;
	}
	

}

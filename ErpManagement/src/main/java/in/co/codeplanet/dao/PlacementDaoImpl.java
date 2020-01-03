package in.co.codeplanet.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import in.co.codeplanet.model.Placement_Details;

@Repository
public class PlacementDaoImpl implements PlacementDao {

	@Autowired
	JdbcTemplate jdbcTemplate;

	@Override
	public List<Placement_Details> getPlacementDetail() {
		List<Placement_Details> output = new ArrayList<Placement_Details>();
		final String procedureCall = "{call placement_details(?,?,?,?,?,?,?,?,?,?,?)}";
		Connection connection = null;
		try {
			connection = jdbcTemplate.getDataSource().getConnection();
			connection.setAutoCommit(false);
			CallableStatement callableSt = connection.prepareCall(procedureCall);
			callableSt.setString(1, "getPlacementDetails");
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
			ResultSet rs=callableSt.executeQuery();
			
			while(rs.next()) {
				Placement_Details placementDetails = new Placement_Details();
				placementDetails.setPlacementId(String.valueOf(rs.getInt("Pk_Placement_Id")));
				placementDetails.setStudentName(rs.getString("User_Name"));
				placementDetails.setStudentEmail(rs.getString("User_Email_Id"));
				placementDetails.setUserId(String.valueOf(rs.getInt("User_Id")));
				placementDetails.setPlacedInCompany(rs.getString("Placed_In_Company"));
				placementDetails.setCtc(rs.getString("CTC"));
				placementDetails.setSelectionType(rs.getString("Selection_Type"));
				placementDetails.setJobProfile(rs.getString("Job_Profile"));
				placementDetails.setPlacementYear(String.valueOf("Placement_Year"));
				output.add(placementDetails);
			}
			
			connection.commit();
		}
		catch(Exception e) {
			try {
				connection.rollback();
			} catch (Exception e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();			
		}
		return output;
	}

	@Override
	public boolean addPlacementDetail(Placement_Details placementDetails) {
		boolean addPlacementFlag = false;
		final String procedureCall = "{call placement_details(?,?,?,?,?,?,?,?,?,?,?)}";
		Connection connection = null;
		try {
			connection = jdbcTemplate.getDataSource().getConnection();
			connection.setAutoCommit(false);
			CallableStatement callableSt = connection.prepareCall(procedureCall);
			callableSt.setString(1, "addPlacementDetails");
			callableSt.setString(2, null);
			callableSt.setString(3, null);
			callableSt.setString(4, placementDetails.getPlacedInCompany());	
			callableSt.setString(5, placementDetails.getCtc());
			callableSt.setString(6, placementDetails.getSelectionType());
			callableSt.setString(7, placementDetails.getJobProfile());
			callableSt.setInt(8, Integer.parseInt(placementDetails.getPlacementYear()));
			callableSt.setInt(9, Integer.parseInt(placementDetails.getCreatedBy()));
			callableSt.setString(10, placementDetails.getStudentEmail());
			callableSt.setString(11, null);
			addPlacementFlag = callableSt.execute();
			connection.commit();
		}
		catch(Exception e) {
			addPlacementFlag = false;
			try {
				connection.rollback();
			} catch (Exception e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();			
		}
		return addPlacementFlag;
	}

	@Override
	public int updatePlacementDetails(Placement_Details placementDetails) {
		int updateFlag = 0;
		final String procedureCall = "{call placement_details(?,?,?,?,?,?,?,?,?,?,?)}";
		Connection connection = null;
		try {
			connection = jdbcTemplate.getDataSource().getConnection();
			connection.setAutoCommit(false);
			CallableStatement callableSt = connection.prepareCall(procedureCall);
			callableSt.setString(1, "updatePlacementDetails");
			callableSt.setString(2, placementDetails.getPlacementId());
			callableSt.setString(3, null);
			callableSt.setString(4, placementDetails.getPlacedInCompany());	
			callableSt.setString(5, placementDetails.getCtc());
			callableSt.setString(6, placementDetails.getSelectionType());
			callableSt.setString(7, placementDetails.getJobProfile());
			callableSt.setInt(8, Integer.parseInt(placementDetails.getPlacementYear()));
			callableSt.setString(9, null);
			callableSt.setString(10, placementDetails.getStudentEmail());
			callableSt.setInt(11, Integer.parseInt(placementDetails.getCreatedBy()));
			updateFlag = callableSt.executeUpdate();
			connection.commit();
		}
		catch(Exception e) {
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
	public boolean deletePlacementDetails(Placement_Details placementDetails) {
		boolean deletePlacementFlag = false;
		final String procedureCall = "{call placement_details(?,?,?,?,?,?,?,?,?,?,?)}";
		Connection connection = null;
		try {
			connection = jdbcTemplate.getDataSource().getConnection();
			connection.setAutoCommit(false);
			CallableStatement callableSt = connection.prepareCall(procedureCall);
			callableSt.setString(1, "deletePlacementDetails");
			callableSt.setString(2, placementDetails.getPlacementId());
			callableSt.setString(3, null);
			callableSt.setString(4, null);
			callableSt.setString(5, null);
			callableSt.setString(6, null);
			callableSt.setString(7, null);
			callableSt.setString(8, null);
			callableSt.setString(9, null);
			callableSt.setString(10, null);
			callableSt.setString(11, null);
			deletePlacementFlag = callableSt.execute();
			connection.commit();
		}
		catch(Exception e) {
			deletePlacementFlag = false;
			try {
				connection.rollback();
			} catch (Exception e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();			
		}
		return deletePlacementFlag;
	}
}

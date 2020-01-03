package in.co.codeplanet.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import in.co.codeplanet.model.Course;

@Repository
public class CourseDaoImpl implements CourseDao {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Override
	public List<Course> getCourseDetail() {
		List<Course> l=new ArrayList<Course>();
		final String procedureCall = "{call course_details(?,?,?,?,?,?,?)}";
		Connection connection = null;
		try {
			connection = jdbcTemplate.getDataSource().getConnection();
			connection.setAutoCommit(false);
			CallableStatement callableSt = connection.prepareCall(procedureCall);
			callableSt.setString(1, "getCourseDetail");
			callableSt.setString(2,null);
			callableSt.setString(3, null);
			callableSt.setString(4, null);
			callableSt.setString(5, null);
			callableSt.setInt(6, 0);
			callableSt.setString(7, null);
			ResultSet rs=callableSt.executeQuery();
			while(rs.next())
			{
				Course c=new Course();
				c.setCourseId(Integer.toString(rs.getInt("Pk_Course_Id")));
				c.setCourseName(rs.getString("Course_Name"));
				c.setCourseDescription(rs.getString("Course_Description"));
				c.setCourseFee(Integer.toString(rs.getInt("Course_Fee")));
				c.setIsActive(Integer.toString(rs.getInt("Is_Active")));
				l.add(c);
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
	public boolean addCourse(Course course) {
		boolean insertFlag = false;
		final String procedureCall = "{call course_details(?,?,?,?,?,?,?)}";
		Connection connection = null;
		try {
			connection = jdbcTemplate.getDataSource().getConnection();
			connection.setAutoCommit(false);
			CallableStatement callableSt = connection.prepareCall(procedureCall);
			callableSt.setString(1, "addCourseDetail");
			callableSt.setString(2,null);
			callableSt.setString(3, course.getCourseName());
			callableSt.setString(4, course.getCourseDescription());
			callableSt.setInt(5, Integer.parseInt(course.getCourseFee()));
			callableSt.setInt(6, Integer.parseInt(course.getCreatedBy()));
			callableSt.setString(7, null);
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
	public int updateCourse(Course course) {
		int insertFlag = 0;
		final String procedureCall = "{call course_details(?,?,?,?,?,?,?)}";
		Connection connection = null;
		try {
			connection = jdbcTemplate.getDataSource().getConnection();
			connection.setAutoCommit(false);
			CallableStatement callableSt = connection.prepareCall(procedureCall);
			callableSt.setString(1, "updateCourseDetail");
			callableSt.setInt(2,Integer.parseInt(course.getCourseId()));
			callableSt.setString(3, course.getCourseName());
			callableSt.setString(4, course.getCourseDescription());
			callableSt.setInt(5, Integer.parseInt(course.getCourseFee()));
			callableSt.setInt(6, Integer.parseInt(course.getModifiedBy()));
			callableSt.setString(7, null);
			insertFlag = callableSt.executeUpdate();
			connection.commit();
		}
		 catch (Exception e) {
			 insertFlag = 0;
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
	public boolean deleteCourse(Course course) {
		boolean deleteFlag = false;
		final String procedureCall = "{call course_details(?,?,?,?,?,?,?)}";
		Connection connection = null;
		try {
			connection = jdbcTemplate.getDataSource().getConnection();
			connection.setAutoCommit(false);
			CallableStatement callableSt = connection.prepareCall(procedureCall);
			callableSt.setString(1, "deleteCourseDetail");
			callableSt.setInt(2,Integer.parseInt(course.getCourseId()));
			callableSt.setString(3, null);
			callableSt.setString(4, null);
			callableSt.setString(5, null);
			callableSt.setInt(6, 0);
			callableSt.setString(7, null);
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
	public int inActiveCourse(Course course) {
		int inActiveFlag=0;
		final String procedureCall = "{call course_details(?,?,?,?,?,?,?)}";
		Connection connection = null;
		try {
			connection = jdbcTemplate.getDataSource().getConnection();
			connection.setAutoCommit(false);
			CallableStatement callableSt = connection.prepareCall(procedureCall);
			callableSt.setString(1, "inActiveCourseDetail");
			callableSt.setInt(2,Integer.parseInt(course.getCourseId()));
			callableSt.setString(3, null);
			callableSt.setString(4, null);
			callableSt.setString(5, null);
			callableSt.setInt(6, Integer.parseInt(course.getCreatedBy()));
			callableSt.setString(7, null);
			inActiveFlag = callableSt.executeUpdate();
			connection.commit();
		}
		 catch (Exception e) {
			 inActiveFlag = 0;
			try {
				connection.rollback();
			} catch (Exception e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		 }
		return inActiveFlag;

	}

	@Override
	public int activeCourse(Course course) {
		int inActiveFlag = 0;
		final String procedureCall = "{call course_details(?,?,?,?,?,?,?)}";
		Connection connection = null;
		try {
			connection = jdbcTemplate.getDataSource().getConnection();
			connection.setAutoCommit(false);
			CallableStatement callableSt = connection.prepareCall(procedureCall);
			callableSt.setString(1, "activeCourseDetail");
			callableSt.setInt(2,Integer.parseInt(course.getCourseId()));
			callableSt.setString(3, null);
			callableSt.setString(4, null);
			callableSt.setString(5, null);
			callableSt.setInt(6, Integer.parseInt(course.getCreatedBy()));
			callableSt.setString(7, null);
			inActiveFlag = callableSt.executeUpdate();
			connection.commit();
		}
		 catch (Exception e) {
			 inActiveFlag = 0;
			try {
				connection.rollback();
			} catch (Exception e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		 }
		return inActiveFlag;

	}

	@Override
	public List<Course> showavailableCourse(Course course) {
		List<Course> l=new ArrayList<Course>();
		final String procedureCall = "{call course_details(?,?,?,?,?,?,?)}";
		Connection connection = null;
		try {
			connection = jdbcTemplate.getDataSource().getConnection();
			connection.setAutoCommit(false);
			CallableStatement callableSt = connection.prepareCall(procedureCall);
			callableSt.setString(1, "showavailableCourse");
			callableSt.setString(2,null);
			callableSt.setString(3, null);
			callableSt.setString(4, null);
			callableSt.setString(5, null);
			callableSt.setInt(6, 0);
			callableSt.setString(7, null);
			ResultSet rs=callableSt.executeQuery();
			while(rs.next())
			{
				Course c=new Course();
				c.setCourseId(Integer.toString(rs.getInt("Pk_Course_Id")));
				c.setCourseName(rs.getString("Course_Name"));
				c.setCourseDescription(rs.getString("Course_Description"));
				c.setCourseFee(Integer.toString(rs.getInt("Course_Fee")));
				c.setIsActive(Integer.toString(rs.getInt("Is_Active")));
				l.add(c);
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

}

package in.co.codeplanet.dao;

import java.util.List;

import in.co.codeplanet.model.Course;

public interface CourseDao {

	List<Course> getCourseDetail();

	boolean addCourse(Course course);

	int updateCourse(Course course);

	boolean deleteCourse(Course course);

	int inActiveCourse(Course course);

	int activeCourse(Course course);

	List<Course> showavailableCourse(Course course);

}

package in.co.codeplanet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.co.codeplanet.dao.CourseDao;
import in.co.codeplanet.model.Course;

@Service
public class CourseServiceImpl implements CourseService{

	@Autowired
	CourseDao courseDao;
	
	
	@Override
	public List<Course> getCourseDetail() {
		return courseDao.getCourseDetail();
	}


	@Override
	public boolean addCourse(Course course) {
		return courseDao.addCourse(course);
	}


	@Override
	public int updateCourse(Course course) {
		return courseDao.updateCourse(course);
	}


	@Override
	public boolean deleteCourse(Course course) {
		return courseDao.deleteCourse(course);
	}


	@Override
	public int inActiveCourse(Course course) {
		return courseDao.inActiveCourse(course);
	}


	@Override
	public int activeCourse(Course course) {
		return courseDao.activeCourse(course);
	}


	@Override
	public List<Course> showavailableCourse(Course course) {
		return courseDao.showavailableCourse(course);
	}

	
}

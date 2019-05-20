package com.dao.student;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.Student;

public interface StudentDao {

	
	   //学生总数
	   int getAllStudentCount();

	    //分页查询
		List<Student> getStudentList(
				@Param("from") int from,
				@Param("pagesize") int pagesize);
	
	
	    //根据学生id查询
		Student getByUserId(@Param("id") int id);
		
		//根据id删除学生
		int delStudent(@Param("id") int id);
		
		//模糊查询
		List<Student> getStudentListByQuery(
				@Param("name") String name);
		
		//添加学生
		int addStudent(Student student);
		
		//修改学生信息
		int updateStudent(Student student);
}

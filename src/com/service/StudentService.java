package com.service;

import java.util.List;

import com.entity.Student;

public interface StudentService {

	Student getById(int id);
	
	boolean addStudent(Student student);
	
	boolean delStudent(int id);
	
	boolean updateStudent(Student student);
	
	List<Student> getStudentListByQuery(String name);
	
	List<Student> getStudentList(int pageIndex,int pagesize);
	
	int getAllStudentCount();
}

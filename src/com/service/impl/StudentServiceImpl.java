package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.student.StudentDao;
import com.entity.Student;
import com.service.StudentService;

@Service
public class StudentServiceImpl implements StudentService {

	@Resource
	StudentDao studentDao;
	
	@Override
	public Student getById(int id) {
		Student stu = studentDao.getByUserId(id);
		return stu;
	}

	@Override
	public boolean addStudent(Student student) {
		boolean flag = false;
		if(studentDao.addStudent(student)>0){
			flag=true;
		}
		return flag;
	}
	
	@Override
	public boolean delStudent(int id) {
		boolean flag = false;
		if(studentDao.delStudent(id)>0){
			flag=true;
		}
		return flag;
	}
	
	@Override
	public boolean updateStudent(Student student) {
		boolean flag = false;
		if(studentDao.updateStudent(student)>0){
			flag=true;
		}
		return flag;
	}

	@Override
	public List<Student> getStudentList(int pageIndex, int pagesize) {
		int from=(pageIndex-1)*pagesize;
		return studentDao.getStudentList(from, pagesize);
	}
	
	@Override
	public int getAllStudentCount() {
		int count = studentDao.getAllStudentCount();
		return count;
	}

	@Override
	public List<Student> getStudentListByQuery(String name) {
		return studentDao.getStudentListByQuery(name);
	}

}

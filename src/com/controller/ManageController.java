package com.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.manage.ManageDao;
import com.entity.Manage;
import com.entity.Student;
import com.mysql.jdbc.StringUtils;
import com.service.ManageService;
import com.service.StudentService;
import com.tools.Constants;
import com.tools.PageSurpot;

@Controller
@RequestMapping("/manage")
public class ManageController {

	@Resource
	StudentService studentService;
	
	@Resource
	ManageService manageService;
	
	@RequestMapping(value="/index.html")
	public String index()
	{
		return "/manage/index";
	}
	
	@RequestMapping(value="/addStudent.html",method=RequestMethod.GET)
	public String addStudent(Student stu)
	{
		return "/manage/addstu";
	}
	
	@RequestMapping(value="/addStudent.html",method=RequestMethod.POST)
	public String doAddStudent(Student stu)
	{
		if(studentService.addStudent(stu)){
			return "/manage/addstu";
		}
		return "/manage/addstu";
	}
	
	@RequestMapping(value="/updateStu.html",method=RequestMethod.GET)
	public String updateStu(Model model, int stuId)
	{
		Student stu = studentService.getById(stuId);
		model.addAttribute("stu", stu);
		return "/manage/updatestu";
	}
	
	@RequestMapping(value="/updateStu.html",method=RequestMethod.POST)
	public String doUpdateStu(Student student)
	{
		if(studentService.updateStudent(student)){
			return "redirect:/manage/studentList.html";
		}
		return "redirect:/manage/studentList.html";
	}
	
	@RequestMapping(value="/delStu.html",method=RequestMethod.GET)
	public String delStu(int stuId)
	{
		if(studentService.delStudent(stuId)){
			return "redirect:/manage/studentList.html";
		}
		return "redirect:/manage/studentList.html";
	}
	
	@RequestMapping(value="/studentList.html")
	public String studentList(@RequestParam(value="pageIndex",required=false) String pageIndex,
			                   Model model)
	{
		int pagesize=Constants.PAGESIZE;
		int currentNo=1;
		if(!StringUtils.isNullOrEmpty(pageIndex)){
			currentNo=Integer.parseInt(pageIndex);
		}
		
		PageSurpot pages=new PageSurpot();
		pages.setPageIndex(currentNo);
		pages.setPageSize(pagesize);
		
		int totalCount=studentService.getAllStudentCount();
		pages.setTotalCount(totalCount);
		List<Student> studentList = studentService.getStudentList(currentNo, pagesize);
		model.addAttribute("studentList",studentList);
		model.addAttribute("pages",pages);
		return "/manage/studentList";
	}
	
	@RequestMapping(value="/updatePwd.html",method=RequestMethod.GET)
	public String updatePwd()
	{
		return "/manage/updatepwd";
	}
	
	@RequestMapping(value="/updatePwd.html",method=RequestMethod.POST)
	public String doUpdatePwd(Manage manage,String repassWord)
	{
		if(!manage.getPassWord().endsWith(repassWord)){
			return "/manage/updatepwd";
		}
		if(manageService.updateManage(manage)){
			return "redirect:/index.html";
		}
		return "redirect:/manage/updatePwd.html";
	}
	
	
}

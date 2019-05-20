package com.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.entity.Manage;
import com.service.ManageService;
import com.tools.Constants;

@Controller
public class IndexController {

	@Resource
	ManageService manageService;
	
	@RequestMapping(value="/index.html",method=RequestMethod.GET)
	public String login()
	{
		return "login";
	}
	
	@RequestMapping(value="/index.html",method=RequestMethod.POST)
	public String doLogin(@RequestParam String userName,
                          @RequestParam String passWord,
                           HttpSession session,
                           HttpServletRequest req)
	{
		Manage adUser = manageService.userLogin(userName, passWord);
		if(adUser==null){
			req.setAttribute("error", "密码");
			return "login";
		}
		session.setAttribute(Constants.USERSESSION, adUser);
		return "redirect:/manage/index.html";
	}
	
	@RequestMapping(value="/reg.html",method=RequestMethod.GET)
	public String reg()
	{
		return "reg";
	}
	
	@RequestMapping(value="/reg.html",method=RequestMethod.POST)
	public String doReg(Manage manage)
	{
		
		if(manageService.addManage(manage)){
			return "redirect:/index.html";
		}
		return "redirect:/index.html";
	}
	
}

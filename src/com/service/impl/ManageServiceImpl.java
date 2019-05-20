package com.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.manage.ManageDao;
import com.entity.Manage;
import com.service.ManageService;

@Service
public class ManageServiceImpl implements ManageService {

	@Resource
	ManageDao manageDao;
	
	/****
	 * 管理员登录
	 */
	@Override
	public Manage userLogin(String userName, String passWord) {
		Manage manage = manageDao.getByUserName(userName);
		if(!manage.getPassWord().equals(passWord))
		{
			manage=null;
		}
		return manage;
	}

	/**
	 * 管理员注册
	 */
	@Override
	public boolean addManage(Manage manage) {
		boolean flag = false;
		if(manageDao.addManage(manage)>0){
			flag=true;
		}
		return flag;
	}

	/***
	 * 修改密码
	 */
	@Override
	public boolean updateManage(Manage manage) {
		boolean flag = false;
		if(manageDao.updateManage(manage)>0){
			flag=true;
		}
		return flag;
	}

}

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
	 * ����Ա��¼
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
	 * ����Աע��
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
	 * �޸�����
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

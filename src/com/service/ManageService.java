package com.service;

import com.entity.Manage;

public interface ManageService {

	Manage userLogin(String userName,String passWord);
	
	boolean addManage(Manage manage);
	
	boolean updateManage(Manage manage);
	
	
}

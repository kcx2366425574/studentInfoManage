package com.dao.manage;

import org.apache.ibatis.annotations.Param;

import com.entity.Manage;

public interface ManageDao {

	Manage getByUserName(@Param("userName") String userName);
	
	int addManage(Manage manage);
	
	int updateManage(Manage manage);
}

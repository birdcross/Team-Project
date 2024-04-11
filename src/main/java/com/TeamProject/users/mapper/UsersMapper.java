package com.TeamProject.users.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.TeamProject.users.domain.UserVo;

@Mapper
public interface UsersMapper {

	void insertUser(UserVo userVo);

	UserVo ulogin(String userid, String passwd);

	UserVo getUser(UserVo userVo);

	void insertinfoUpdate(UserVo userVo);

	void updateUser(UserVo userVo);

	
	
}

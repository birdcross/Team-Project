package com.TeamProject.users.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.TeamProject.users.domain.UserVo;

@Mapper
public interface UsersMapper {

	void insertUser(UserVo userVo);

	UserVo ulogin(String userid, String passwd);

	
	
}

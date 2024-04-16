package com.TeamProject.community.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.TeamProject.community.domain.ComuVo;

@Mapper
public interface ComuMapper {
	
	List<ComuVo> getComuList(ComuVo comuVo);

	ComuVo ComuCreate(ComuVo comuVo);

	void inserusercomu(ComuVo comuVo);
	

}

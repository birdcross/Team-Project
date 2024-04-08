package com.TeamProject.users.apply.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.TeamProject.users.apply.domain.ApplyVo;
import com.TeamProject.users.post.domain.PostVo;
import com.TeamProject.users.resume.domain.ResumeVo;

@Mapper
public interface ApplyMapper {

	HashMap<String, Object> getApplyMap(ApplyVo applyVo);

	List<ApplyVo> getApplyList(ApplyVo applyVo);

	
	
}

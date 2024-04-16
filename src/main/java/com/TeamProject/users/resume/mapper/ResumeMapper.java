package com.TeamProject.users.resume.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.TeamProject.users.apply.domain.ApplyVo;
import com.TeamProject.users.post.domain.PostVo;
import com.TeamProject.users.resume.domain.ResumeVo;

@Mapper
public interface ResumeMapper {

	HashMap<String, Object> getResume(ResumeVo resumeVo);

	List<ResumeVo> getResumeList();

	HashMap<String, Object> getSRList(ResumeVo resumeVo);

	void insertResume(ResumeVo resumeVo);

	ResumeVo getResumeVo(ResumeVo resumeVo);

	List<ResumeVo> getResumeList(ResumeVo resumeVo);

	List<ResumeVo> getMainResumeList();

	List<ResumeVo> getResumeList1();

	HashMap<String, Object> getComView(ResumeVo resumeVo);

	void deleteResume(ResumeVo resumeVo);

	void updateResume(ResumeVo resumeVo);

	
}

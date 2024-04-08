package com.TeamProject.company.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.TeamProject.company.domain.CompanyVo;
import com.TeamProject.users.domain.UserVo;


@Mapper
public interface CompanyMapper {

	HashMap<String, Object> getCompany(CompanyVo companyVo);    //  info  마이페이지
	
	void insertCompany(CompanyVo companyVo);                    //  join
	
	void updateCompany(CompanyVo companyVo);                    //  update
	
	void deleteCompany(CompanyVo companyVo);                    //  delete

	CompanyVo login(String com_id, String com_pw);              //  loginform 에서 로그인
	

}

// List<CompanyVo> getCompanyList();           -- 운영자페이지에 필요? 회원 전체리스트
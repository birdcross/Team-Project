package com.TeamProject.company.mapper;

import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.TeamProject.company.domain.CompanyVo;

@Mapper
public interface CompanyMapper {

	void insertCompany(CompanyVo companyVo);

	CompanyVo clogin(String comid, String compw);

	CompanyVo getCompany(CompanyVo companyVo);

	void getupDateForm(CompanyVo companyVo);

	void updateCompany(CompanyVo companyVo);

	void deleteCompany(CompanyVo companyVo);



}

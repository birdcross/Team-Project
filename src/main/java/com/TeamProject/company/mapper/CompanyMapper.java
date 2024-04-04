package com.TeamProject.company.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.TeamProject.company.domain.CompanyVo;

@Mapper
public interface CompanyMapper {

	void insertCompany(CompanyVo companyVo);

}

package com.TeamProject.company.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.TeamProject.company.domain.CompanyVo;
import com.TeamProject.company.mapper.CompanyMapper;
import com.TeamProject.users.domain.UserVo;
import com.TeamProject.users.mapper.UsersMapper;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Controller
@RequestMapping("/Company")
public class CompanyController {
	@Autowired
	private  CompanyMapper  companyMapper;
	
	
	@RequestMapping("/Login")
	public  String  loginForm() {

		return "company/loginForm";
	
	}
	@RequestMapping("/JoinForm")
	public  ModelAndView   joinForm() {
		
		ModelAndView    mv    = new ModelAndView();		
		mv.setViewName("company/joinForm");
		return  mv;
		
	}
	
	//  /Users/Join
	@RequestMapping("/Join")
	public  ModelAndView  join( CompanyVo  companyVo ) {		
		// 저장
		companyMapper.insertCompany( companyVo );		
		
		// 데이터를 가지고 이동한다
		ModelAndView   mv   =  new  ModelAndView();
		mv.setViewName("redirect:/Company/Login");
		return   mv;
	}
	@RequestMapping("/Main")
	public  String  Main() {

		return "company/main";
	}
	@RequestMapping("/Info")
	public  String  Info() {

		return "company/info";
	}
}	





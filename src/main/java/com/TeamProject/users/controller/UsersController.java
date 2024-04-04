package com.TeamProject.users.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.TeamProject.users.domain.UserVo;
import com.TeamProject.users.mapper.UsersMapper;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Controller
@RequestMapping("/Users")
public class UsersController {
	@Autowired
	private  UsersMapper  userMapper;
	
	
	@RequestMapping("/Login")
	public  String  loginForm() {

		return "users/loginForm";
	
	}
//  /Users/JoinForm
	@RequestMapping("/JoinForm")
	public  ModelAndView   joinForm() {
		
		ModelAndView    mv    = new ModelAndView();		
		mv.setViewName("users/joinForm");
		return  mv;
		
	}
	
	//  /Users/Join
	@RequestMapping("/Join")
	public  ModelAndView  join( UserVo  userVo ) {		
		// 저장
		userMapper.insertUser( userVo );		
		
		// 데이터를 가지고 이동한다
		ModelAndView   mv   =  new  ModelAndView();
		mv.setViewName("redirect:/Users/Login");
		return   mv;
	}
	@RequestMapping("/Main")
	public  String  Main() {

		return "users/main";
	}
	@RequestMapping("/Info")
	public  String  Info() {

		return "users/info";
	}
}	





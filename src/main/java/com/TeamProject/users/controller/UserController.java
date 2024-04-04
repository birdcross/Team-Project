package com.TeamProject.users.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.TeamProject.users.mapper.UserMapper;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Controller
@RequestMapping("/Users")
public class UserController {
	@Autowired
	private  UserMapper  userMapper;
	
	
	@RequestMapping("/Login")
	public  String  loginForm() {

		return "users/loginForm";
	
	}
}	





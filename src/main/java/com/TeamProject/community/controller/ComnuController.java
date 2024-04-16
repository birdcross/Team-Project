package com.TeamProject.community.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.TeamProject.community.domain.ComuVo;
import com.TeamProject.community.mapper.ComuMapper;
import com.TeamProject.users.domain.UserVo;
import com.TeamProject.users.mapper.UsersMapper;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Controller
@RequestMapping("/Community")
public class ComnuController {
	@Autowired
	ComuMapper comuMapper; 
	@Autowired
	UsersMapper usersMapper;
	
	@RequestMapping("/ComuHome")
	public  ModelAndView  Commhome( ComuVo comuVo, UserVo userVo) {
		List<ComuVo> comuList = comuMapper.getComuList( comuVo );
		ModelAndView    mv    = new ModelAndView();		
		mv.addObject("comuList", comuList);
		mv.setViewName("community/comuHome");
		return  mv;
	}
	
	@RequestMapping("/ComuCreateForm")
	public  ModelAndView  ComuCreateForm(ComuVo comuVo) {
		ModelAndView    mv    = new ModelAndView();
		mv.setViewName("community/comuCreateForm");
		return  mv;
	}
	
	@RequestMapping("/ComuCreate")
	public  ModelAndView  ComuCreate( ComuVo comuVo) {
		comuMapper.inserusercomu(comuVo);
		String user_id = comuVo.getUser_id();
		ModelAndView    mv    = new ModelAndView();
		mv.setViewName("redirect:/Community/ComuHome?user_id=" + user_id);
		return  mv;
	}
	
	
}

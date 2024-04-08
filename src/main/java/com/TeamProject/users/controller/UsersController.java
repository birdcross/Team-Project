package com.TeamProject.users.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.TeamProject.company.domain.CompanyVo;
import com.TeamProject.users.apply.domain.ApplyVo;
import com.TeamProject.users.apply.mapper.ApplyMapper;
import com.TeamProject.users.domain.UserVo;
import com.TeamProject.users.mapper.UsersMapper;
import com.TeamProject.users.post.domain.PostVo;
import com.TeamProject.users.post.mapper.PostMapper;
import com.TeamProject.users.resume.domain.ResumeVo;
import com.TeamProject.users.resume.mapper.ResumeMapper;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.websocket.Session;
import lombok.extern.slf4j.Slf4j;
@Slf4j
@Controller


@RequestMapping("/Users")
public class UsersController {
	@Autowired
	private  UsersMapper  userMapper;
	@Autowired
	private PostMapper postMapper;
	@Autowired
	private ResumeMapper resumeMapper;
	@Autowired
	private ApplyMapper applyMapper;
	
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
	@RequestMapping("/Info")
	public  String  Info() {

		return "users/info";
	}
	
	
	@RequestMapping("/Scrap")
	public  ModelAndView  Scrap ( PostVo postVo  ) {
		
		ModelAndView   mv   =  new  ModelAndView();
		mv.setViewName("users/scrap");
		return mv;
	}
	@RequestMapping("/Login")
	public   ModelAndView   loginForm() {		
		ModelAndView   mv  =  new ModelAndView();
		mv.setViewName("users/loginForm");
		return         mv;
	}
	
	
	@RequestMapping("/Login1")
	public   ModelAndView   login( HttpServletRequest  request  ) {
		
		String     userid    =  request.getParameter("user_id");
		String     passwd    =  request.getParameter("user_pw");
		
		UserVo     userVo    =  userMapper.ulogin( userid, passwd  ); 
		
		String     loc       =  "";
		if(  userVo != null  ) { // 아이디와 암호가 일치하면
			HttpSession  session =  request.getSession();
			session.setAttribute("login", userVo );
			loc    =  "users/main";  
		} else {  // 아이디 비번 틀림
			loc    =  "users/loginForm"; 
		}
		
		ModelAndView  mv  = new ModelAndView();
		mv.setViewName( loc );		
		return  mv;
		
	}
	
	@RequestMapping("/Logout")
	public   String   logout(  HttpSession  session    ) {
		session.invalidate();
		return  "users/loginForm";
	}
	
	@RequestMapping("/Main")
	public  ModelAndView  Main( PostVo postVo ) {

		List<PostVo> postList = postMapper.getPostList();
		
		ModelAndView   mv   =  new  ModelAndView();
		mv.addObject("postList", postList);
		mv.setViewName("users/main");
		return mv;
	}
	
	@RequestMapping("/View")
	public  ModelAndView  View( PostVo postVo, CompanyVo companyVo ) {
		
		HashMap<String, Object>  map  =  postMapper.getView( postVo );
		
		ModelAndView   mv   =  new  ModelAndView();
		mv.addObject("po", map);
		mv.setViewName("users/view");
		return mv;
	}
	
	@RequestMapping("/ApplyForm")
	public  ModelAndView  ApplyForm ( PostVo postVo, ResumeVo resumeVo ) {
		
		HashMap<String, Object>  pmap  =  postMapper.getPost( postVo );
		List<ResumeVo> resumeList = resumeMapper.getResumeList( resumeVo );
		List<PostVo> postList = postMapper.getPostList();
		
		ModelAndView   mv   =  new  ModelAndView();
		mv.addObject("resumeList", resumeList);
		mv.addObject("postList", postList);
		mv.addObject("po", pmap);
		mv.setViewName("users/applyForm");
		return mv;
	}
	
	@RequestMapping("/ResumeForm")
	public  ModelAndView  ResumeForm ( ResumeVo resumeVo  ) {
		
		List<ResumeVo> resumeList = resumeMapper.getResumeList( resumeVo );
		
		ModelAndView   mv   =  new  ModelAndView();
		mv.addObject("resumeList", resumeList);
		mv.setViewName("users/resumeForm");
		return mv;
	}
	
	@RequestMapping("/History")
	public  ModelAndView  History ( ResumeVo resumeVo, ApplyVo applyVo  ) {
		

		List<ResumeVo> resumeList = resumeMapper.getResumeList( resumeVo );

		HashMap<String, Object>  applyMap   =  applyMapper.getApplyMap( applyVo );
		
		ModelAndView   mv   =  new  ModelAndView();

		mv.addObject("resumeList", resumeList);
		mv.addObject("applyMap", applyMap);
		mv.setViewName("users/history");
		return mv;
	}

}	





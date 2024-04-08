package com.TeamProject.company.controller;

import java.util.HashMap;

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
	
	
	@RequestMapping("/LoginForm")
	public  ModelAndView  loginForm() {

		ModelAndView    mv    = new ModelAndView();		
		mv.setViewName("company/loginForm");
		return  mv;
	
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
		mv.setViewName("redirect:/company/loginForm");
		return   mv;
	}
	
	@RequestMapping("/Main")
public  ModelAndView  main() {
		
		ModelAndView    mv    = new ModelAndView();		
		mv.setViewName("company/main");
		return  mv;
	}
	
	
	
	@RequestMapping("/Info")
public  ModelAndView   info( CompanyVo  companyVo ) {
		
		// user_id=aa  db 조회
		HashMap<String, Object>  map  =  companyMapper.getCompany( companyVo );   
		// System.out.println( vo );
		log.info("map : {}", map);
		
		// map.get("userid")
		
		ModelAndView  mv  =  new ModelAndView();
		mv.addObject("vo", map);
		mv.setViewName("company/info");
		return  mv;		
	}
		
	
		
	
	@RequestMapping("/Update")
	public  ModelAndView   update( CompanyVo  companyVo ) {
		
			log.info( "companyVo : {}",  companyVo  );
			// 수정
			
			companyMapper.updateCompany( companyVo ); 
			
			ModelAndView   mv  =  new ModelAndView();		
			mv.setViewName("redirect:/company/loginForm");		
			return  mv;
		
	}
	
	
	@RequestMapping("/Delete")
	public  ModelAndView   delete( CompanyVo  companyVo ) {
		
		companyMapper.deleteCompany( companyVo );

		ModelAndView    mv    = new ModelAndView();		
		mv.setViewName("redirect:/company/loginForm");
		return  mv;
		
	}
}	





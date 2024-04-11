package com.TeamProject.company.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.TeamProject.company.domain.CompanyVo;
import com.TeamProject.company.mapper.CompanyMapper;
import com.TeamProject.users.post.domain.PostVo;
import com.TeamProject.users.post.mapper.PostMapper;
import com.TeamProject.users.resume.domain.ResumeVo;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;
@Slf4j
@Controller
@RequestMapping("/Company")
public class CompanyController {
	@Autowired
	private  CompanyMapper  companyMapper;
	@Autowired
	private  PostMapper  postMapper;
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
	public  ModelAndView  Info( CompanyVo  companyVo ) {

		CompanyVo cvo = companyMapper.getCompany( companyVo );
		ModelAndView   mv  =  new ModelAndView();
		mv.addObject("cvo", cvo);
		mv.setViewName("company/info");
		return         mv;
	}
	
	@RequestMapping("/Login")
	public   ModelAndView   loginForm() {		
		ModelAndView   mv  =  new ModelAndView();
		mv.setViewName("company/loginForm");
		return         mv;
	}
	
	@RequestMapping("/LoginMain")
	public   ModelAndView   login( HttpServletRequest  request  ) {
		
		String     comid    =  request.getParameter("com_id");
		String     compw    =  request.getParameter("com_pw");
		
		CompanyVo     companyVo    =  companyMapper.clogin( comid, compw  ); 
		
		String     loc       =  "";
		if(  companyVo != null  ) { // 아이디와 암호가 일치하면
			HttpSession  session =  request.getSession();
			session.setAttribute("clogin", companyVo );
			loc    =  "company/main";  
		} else {  // 아이디 비번 틀림
			loc    =  "company/loginForm"; 
		}
		
		ModelAndView  mv  = new ModelAndView();
		mv.setViewName( loc );		
		return  mv;
		
	}
	@RequestMapping("/Logout")
	public   String   logout(  HttpSession  session    ) {
		session.invalidate();
		return  "company/loginForm";
	}
	@RequestMapping("/Posts")
	public  ModelAndView  PostsForm ( PostVo postVo  ) {
		List<PostVo> postComList = postMapper.getPostComList( postVo );
		ModelAndView   mv   =  new  ModelAndView();
		mv.addObject("postComList", postComList );
		mv.setViewName("company/posts");
		return mv;
	}
	@RequestMapping("/SavePostForm")
	public  ModelAndView  SavePostForm ( CompanyVo companyVo  ) {
		
		ModelAndView   mv   =  new  ModelAndView();
		mv.setViewName("company/savePostForm");
		return mv;
	}
	@RequestMapping("/SavePostWriter")
	public  ModelAndView  SavePostWriter(PostVo postVo){
		
		postMapper.insertCom_Post( postVo );		
		ModelAndView   mv   =  new  ModelAndView();
		String com_id = postVo.getCom_id();
		mv.setViewName("redirect:/Company/Posts?com_id=" + com_id);
		return   mv;
	}
	@RequestMapping("/GetResume")
	public  ModelAndView  GetResume ( CompanyVo companyVo  ) {
		
		ModelAndView   mv   =  new  ModelAndView();
		mv.setViewName("company/getResume");
		return mv;
	}
	@RequestMapping("/Scrap")
	public  ModelAndView  Scrap ( CompanyVo companyVo  ) {
		
		ModelAndView   mv   =  new  ModelAndView();
		mv.setViewName("company/scrap");
		return mv;
	}
	
	@RequestMapping("/UpdateForm")
	public  ModelAndView  UpdateForm ( CompanyVo companyVo ) {

		CompanyVo cvo = companyMapper.getCompany( companyVo );
		ModelAndView   mv   =  new  ModelAndView();
		mv.addObject("cvo", cvo);
		mv.setViewName("company/updateForm");
		return mv;
	}

	   @RequestMapping("/Update")
	   public  ModelAndView  Update ( CompanyVo companyVo  ) {   
	   companyMapper.updateCompany( companyVo );
	   ModelAndView   mv   =  new  ModelAndView();
	   String com_id = companyVo.getCom_id();
	   mv.setViewName("redirect:/Company/Info?com_id=" + com_id);
	   return mv;
	   }
	
	
	@RequestMapping("/Delete")
	public   ModelAndView   delete( CompanyVo  companyVo  ) {
		
		companyMapper.deleteCompany( companyVo );
		
		ModelAndView  mv  = new ModelAndView();
		mv.setViewName("redirect:/Company/Login");
		return  mv;
		
	}
	
	
	@RequestMapping("/Community")
	public  ModelAndView  Community ( CompanyVo companyVo  ) {
		
		ModelAndView   mv   =  new  ModelAndView();
		mv.setViewName("company/community");
		return mv;
	}
	
	
	
	@RequestMapping("/DeletePost")
	public  ModelAndView  DeletePost(PostVo postVo){
		
		postMapper.deleteComPost( postVo );		
		ModelAndView   mv   =  new  ModelAndView();
		String com_id = postVo.getCom_id();
		mv.setViewName("redirect:/Company/Posts?com_id=" + com_id);
		return   mv;
	}
}








package com.TeamProject.company.controller;

import java.util.HashMap;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.TeamProject.company.domain.CompanyVo;
import com.TeamProject.company.mapper.CompanyMapper;
import com.TeamProject.users.apply.domain.ApplyVo;
import com.TeamProject.users.apply.mapper.ApplyMapper;
import com.TeamProject.users.domain.UserVo;
import com.TeamProject.users.post.domain.PostVo;
import com.TeamProject.users.post.mapper.PostMapper;
import com.TeamProject.users.resume.domain.ResumeVo;
import com.TeamProject.users.resume.mapper.ResumeMapper;

import ch.qos.logback.core.model.Model;
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
	@Autowired
	private ResumeMapper resumeMapper;
	@Autowired
	private ApplyMapper applyMapper;

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
	public  ModelAndView  Main() {
		List<ResumeVo> resumeList = resumeMapper.getMainResumeList();
		ModelAndView   mv  =  new ModelAndView();
		mv.addObject("resumeList", resumeList);
		mv.setViewName("company/main");
		return mv;
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
		List<ResumeVo> resumeList = resumeMapper.getResumeList1();
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
		mv.addObject("resumeList", resumeList);
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
	public  ModelAndView  GetResume ( ApplyVo applyVo  ) {
		
		List<ApplyVo> applyList = applyMapper.getApplyList2( applyVo );
		
		ModelAndView   mv   =  new  ModelAndView();

		mv.addObject("applyList", applyList);
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
	
	@RequestMapping("/PostDetail")
	public  ModelAndView  PostDetailForm ( PostVo postVo  ) {
		PostVo pvo= postMapper.getPostDetail( postVo );
		ModelAndView   mv   =  new  ModelAndView();
		mv.addObject("pvo", pvo );
		mv.setViewName("company/postDetail");
		return mv;
	}
	
	
	@RequestMapping("/PostDetailUpdateView")
	   public  ModelAndView  postDetailUpdateView ( PostVo postVo  ) {   
		PostVo pvo = postMapper.getPostDetail1(postVo);
		ModelAndView   mv   =  new  ModelAndView();
		mv.addObject("pvo", pvo);
		mv.setViewName("company/postDetailUpdateView");
		return mv;
	   }
	
	@RequestMapping("/PostDetailUpdate")
	   public  ModelAndView  postDetailUpdate ( PostVo postVo  ) {   
		postMapper.postDtailUpdate( postVo );
		ModelAndView   mv   =  new  ModelAndView();
		String com_id = postVo.getCom_id();
		   mv.setViewName("redirect:/Company/Posts?com_id="+ com_id);
		   return mv;
	}
	
	@RequestMapping("/View")
	public  ModelAndView  View( ResumeVo resumeVo, UserVo userVo ) {
		HashMap<String, Object>  map  =  resumeMapper.getComView( resumeVo );
		System.out.println(map);
		ModelAndView   mv   =  new  ModelAndView();
		mv.addObject("po", map);
		mv.setViewName("company/view");
		return mv;
	}
	
	@RequestMapping("/ComApplyForm")
	public  ModelAndView  comApplyForm ( PostVo postVo, ResumeVo resumeVo ) {
		List<PostVo> postComList = postMapper.getPostComList(postVo);
		PostVo pvo= postMapper.getPostDetail( postVo );
		ModelAndView   mv   =  new  ModelAndView();
		mv.addObject("postComList", postComList);
		mv.addObject("pvo", pvo);
		mv.setViewName("company/comApplyForm");
		return mv;
	}
	
	@RequestMapping("ApplyMain")
	public ModelAndView applymain() {
		ModelAndView   mv   =  new  ModelAndView();
		return mv;
	}
	
}








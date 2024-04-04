package com.TeamProject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Project1Controller {
	// http://localhost/
 	@RequestMapping("/")
	public  String   siteMain() {
		return "sitemain";      // siteMain.jsp
	}
 	@RequestMapping("/test")
	public  String   test() {
		return "test";      // siteMain.jsp
	}
 	@RequestMapping("/test2")
	public  String   test2() {
		return "test2";      // siteMain.jsp
	}
}

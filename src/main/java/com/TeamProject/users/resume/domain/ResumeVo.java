package com.TeamProject.users.resume.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ResumeVo {
	
	private int re_num;
	private String user_id;
	private String user_title;
	private String skill;
	private String career;
	private String region;
	private String user_port;
	private String user_intti;
	private String user_intco;
	private String user_img;
	
}

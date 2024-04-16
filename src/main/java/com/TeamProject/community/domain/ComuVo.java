package com.TeamProject.community.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ComuVo {
	private  int comu_bno;
	private  String comu_title;
	private  String comu_content;
	private  String user_id;
	private  int comu_hit;
	private  String comu_date;
}

package com.TeamProject.company.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

// @Data : @Getter, @Setter, @ToString, 
//         @EqualsAndHashCode, @RequiedArgsConstructor
@Data
@NoArgsConstructor
@AllArgsConstructor
public class CompanyVo {
	private  String com_id;
	private  String com_name;
	private  String com_num;
	private  String com_boss;
	private  String com_pw;
}

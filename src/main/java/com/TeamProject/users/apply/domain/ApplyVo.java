package com.TeamProject.users.apply.domain;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

// @Data : @Getter, @Setter, @ToString, 
//         @EqualsAndHashCode, @RequiedArgsConstructor
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ApplyVo {
	
	private int    po_num;
	private int    re_num;
	private String user_id;
	private String user_title;
	private String po_title;
	private String com_date;
	private String result;
	
}

package com.TeamProject.users.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

// @Data : @Getter, @Setter, @ToString, 
//         @EqualsAndHashCode, @RequiedArgsConstructor
@Data
@NoArgsConstructor
@AllArgsConstructor
public class UsersVo {
	private  String user_id;
	private  String user_name;
	private  String user_pw;
	private  String user_tell;
	private  String user_date;
	private  String user_gender;
}

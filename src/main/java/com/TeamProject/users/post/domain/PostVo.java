package com.TeamProject.users.post.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

// @Data : @Getter, @Setter, @ToString, 
//         @EqualsAndHashCode, @RequiedArgsConstructor
@Data
@NoArgsConstructor
@AllArgsConstructor
public class PostVo {
	
	private int po_num;
	private String com_id;
	private String po_title;
	private String skill;
	private String career;
	private String region;
	private String emplo;
	private String po_subtitle;
	private String po_content;
	private String po_image;
}

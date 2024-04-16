package com.TeamProject.bookmark.domin;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class BookmarkVo {
	private int re_num;
	private String com_id;
	private String user_id;
	private int bookmark;
}

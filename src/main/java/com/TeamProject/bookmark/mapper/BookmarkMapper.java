package com.TeamProject.bookmark.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.TeamProject.bookmark.domin.BookmarkVo;

@Mapper
public interface BookmarkMapper {

	boolean ComBookmark(BookmarkVo bookmarkvo);

	void insertScrap(BookmarkVo bookmarkVo);

	void deleteScrap(int resume_idx);

	int countScrap(String cid, int resume_idx);



}

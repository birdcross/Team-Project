package com.TeamProject.bookmark.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.TeamProject.bookmark.domin.BookmarkVo;
import com.TeamProject.bookmark.mapper.BookmarkMapper;

@Controller
@RequestMapping("/Bookmarks")
public class BookmarkController {
	@Autowired
	private BookmarkMapper bookmarkMapper;
	
    @RequestMapping("/GetBookMark")
    public ModelAndView getbookmark(BookmarkVo bookmarkvo) {
        boolean book = bookmarkMapper.ComBookmark(bookmarkvo);
        ModelAndView mv = new ModelAndView();
        mv.addObject("book", book);
        mv.setViewName("redirect:/company/view");
        return mv;
    }
    
    @RequestMapping("DeleteBookMark")
    public ModelAndView deletebookmark(BookmarkVo bookmarkVo) {
        boolean book = bookmarkMapper.ComBookmark(bookmarkVo);
        ModelAndView mv = new ModelAndView();
        mv.addObject("book", !book); 
        mv.setViewName("redirect:/company/view"); 
        return mv;
    }
    
}

package com.board;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.board.domain.BoardVo;
import com.board.mapper.BoardMapper;


@SpringBootTest
class BoardApplicationTests {
	//DataSource ds = new DataSource();
	// Autowired : Spring 이 자동으로 생성한 ds를 연결해준다
	@Autowired
	private DataSource ds = null;
	
	@Autowired
	private BoardMapper boardMapper;
	@Test
	void contextLoads() {
	}
	@Test
	void test1() {
		double n1 = 10;
		double n2 = 3;
		double n = n1/n2;
		System.out.println(n);
		//assertEquals(n, 3.5);
		assertEquals(n, 3.5, 0.5);
	}
	@Test
	public  void  testConnection() throws SQLException {
		// db연결 테스트
		Connection   conn = ds.getConnection();
		System.out.println(conn);
		conn.close();
	}
	// db연결하기
	@Test
	void testInsert() {
		BoardVo vo = new BoardVo();
		vo.setTitle("Springboot 글쓰기");
		vo.setContent("글 내용입니다");
		vo.setWriter("관리자");
		boardMapper.boardInsert(vo);
		
		
	}
}

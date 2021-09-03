package com.ywhy.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ywhy.vo.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int getListCount(BoardVO b) {
		return this.sqlSession.selectOne("b_count",b);
	}
	
	@Override
	public List<BoardVO> getBoardList(BoardVO b) {
		return this.sqlSession.selectList("board_list", b);
	}

	@Override
	public void insertBoard(BoardVO b) {
		this.sqlSession.insert("b_in",b);
	}

}

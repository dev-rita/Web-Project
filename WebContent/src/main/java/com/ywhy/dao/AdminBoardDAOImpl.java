package com.ywhy.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ywhy.vo.BoardVO;

@Repository
public class AdminBoardDAOImpl implements AdminBoardDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int getQnaListCount(BoardVO b) {
		return this.sqlSession.selectOne("aq_count",b);
	}

	@Override
	public List<BoardVO> getBoardQList(BoardVO b) {
		return this.sqlSession.selectList("aq_list",b);
	}

	@Override
	public void delete(String no) {
		this.sqlSession.delete("aq_del",no);
	}


}

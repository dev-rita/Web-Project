package com.ywhy.dao;

import java.util.List;

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
	public int getAdminBoardListCount(BoardVO b) {
		return this.sqlSession.selectOne("ac_count",b);
	}

	@Override
	public List<BoardVO> getAdminBoardList(BoardVO b) {
		return this.sqlSession.selectList("ac_list",b);
	}

	@Override
	public void insertAdminBoard(BoardVO b) {
		this.sqlSession.insert("ab_in",b);
	}
	
	@Override
	public BoardVO getAdminBoardCont(int no) {
		return this.sqlSession.selectOne("ab_cont",no);
	}

	@Override
	public void editAdminBoard(BoardVO eb) {
		this.sqlSession.update("ab_edit",eb);
	}

	@Override
	public void deleteAdminBoard(String no) {
		this.sqlSession.delete("ab_del",no);
	}

	
}

package com.ywhy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ywhy.dao.BoardDAO;
import com.ywhy.vo.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardDAO boardDao;

	@Override
	public int getListCount(BoardVO b) {
		return this.boardDao.getListCount(b);
	}
	
	@Override
	public List<BoardVO> getBoardList(BoardVO b) {
		return this.boardDao.getBoardList(b);
	}


	@Override
	public void insertBoard(BoardVO b) {
		this.boardDao.insertBoard(b);
	}


	
	
}

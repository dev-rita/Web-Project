package com.ywhy.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ywhy.dao.AdminBoardDAO;
import com.ywhy.vo.BoardVO;

@Service
public class AdminBoardServiceImpl implements AdminBoardService {

	@Autowired
	private AdminBoardDAO adminBoardDao;
	
	@Override
	public int getQnaListCount(BoardVO b) {
		return this.adminBoardDao.getQnaListCount(b);
	}

	@Override
	public List<BoardVO> getBoardQList(BoardVO b) {
		return this.adminBoardDao.getBoardQList(b);
	}

	@Override
	public void delete(String no) {
		this.adminBoardDao.delete(no);
	}

}

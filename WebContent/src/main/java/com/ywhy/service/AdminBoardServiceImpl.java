package com.ywhy.service;

import java.util.List;

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
	public int getAdminBoardListCount(BoardVO b) {
		return this.adminBoardDao.getAdminBoardListCount(b);
	}

	@Override
	public List<BoardVO> getAdminBoardList(BoardVO b) {
		return this.adminBoardDao.getAdminBoardList(b);
	}
	
	@Override
	public void insertAdminBoard(BoardVO b) {
		this.adminBoardDao.insertAdminBoard(b);
	}
	
	@Override
	public BoardVO getAdminBoardCont(int no) {
		return this.adminBoardDao.getAdminBoardCont(no);
	}

	@Override
	public void editAdminBoard(BoardVO eb) {
		this.adminBoardDao.editAdminBoard(eb);
	}

	@Override
	public void deleteAdminBoard(String no) {
		this.adminBoardDao.deleteAdminBoard(no);
	}

	@Override
	public void pickAdminBoard(String no) {
		this.adminBoardDao.pickAdminBoard(no);
	}
}

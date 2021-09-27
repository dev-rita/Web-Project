package com.ywhy.dao;

import java.util.List;

import com.ywhy.vo.BoardVO;

public interface AdminBoardDAO {

	int getQnaListCount(BoardVO b);

	List<BoardVO> getBoardQList(BoardVO b);

	int getAdminBoardListCount(BoardVO b);

	List<BoardVO> getAdminBoardList(BoardVO b);
	
	void insertAdminBoard(BoardVO b);
	
	BoardVO getAdminBoardCont(int no);

	void editAdminBoard(BoardVO eb);
	
	void deleteAdminBoard(String no);

}

package com.ywhy.service;

import java.util.List;

import com.ywhy.vo.BoardVO;

public interface AdminBoardService {

	int getQnaListCount(BoardVO b);

	List<BoardVO> getBoardQList(BoardVO b);

	int getAdminBoardListCount(BoardVO b);

	List<BoardVO> getAdminBoardList(BoardVO b);
	
	void insertAdminBoard(BoardVO b);

	BoardVO getAdminBoardCont(int no);

	void editAdminBoard(BoardVO eb);

	void deleteAdminBoard(String no);

	void pickAdminBoard(String string);


}

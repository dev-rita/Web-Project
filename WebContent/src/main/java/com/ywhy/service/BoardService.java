package com.ywhy.service;

import java.util.List;

import com.ywhy.vo.BoardVO;

public interface BoardService {	

	int getListCount(BoardVO b);
	List<BoardVO> getBoardList(BoardVO b);
	List<BoardVO> getBoardListVote(BoardVO b);
	List<BoardVO> getBoardListNote(BoardVO b);
	List<BoardVO> getBoardListScrap(BoardVO b);
	List<BoardVO> getBoardListView(BoardVO b);
	void insertBoard(BoardVO b);
	BoardVO getBoardCont(int b_no);
	BoardVO getBoardCont2(int b_no);
	void editBoard(BoardVO eb);
	void delBoard(int b_no);
	void b_recommendp(int b_no);
	void b_recommendm(int b_no);
	List<BoardVO> listReply(int b_no);
	void addReply(BoardVO vo);
	void updateReply(BoardVO vo);
	void remove(int r_no);
	
	
}

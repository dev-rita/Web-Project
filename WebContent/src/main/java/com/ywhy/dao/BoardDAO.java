package com.ywhy.dao;

import java.util.List;

import com.ywhy.vo.BoardVO;

public interface BoardDAO {

	int getListCount(BoardVO b);
	List<BoardVO> getBoardList(BoardVO b);
	List<BoardVO> getBoardListVote(BoardVO b);
	List<BoardVO> getBoardListNote(BoardVO b);
	List<BoardVO> getBoardListScrap(BoardVO b);
	List<BoardVO> getBoardListView(BoardVO b);
	void insertBoard(BoardVO b);
	void updateHit(int b_no);
	BoardVO getBoardCont(int b_no);
	void editBbs(BoardVO eb);
	void delBoard(int b_no);
	void b_recommendp(int b_no);
	void b_recommendm(int b_no);
	List<BoardVO> listReply(int b_no);
	void addReply(BoardVO vo);
	void updateReplyCnt(int b_no, int count);
	void updateReply(BoardVO vo);
	int getB_no(int r_no);
	void delReply(int r_no);
	

}

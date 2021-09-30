package com.ywhy.service;

import java.util.List;

import com.ywhy.vo.BoardVO;

public interface BoardService {	
	
	//커뮤니티
	int getListCount(BoardVO b);
	List<BoardVO> getBoardList(BoardVO b);
	List<BoardVO> getBoardListVote(BoardVO b);
	List<BoardVO> getBoardListNote(BoardVO b);
	List<BoardVO> getBoardListScrap(BoardVO b);
	List<BoardVO> getBoardListView(BoardVO b);
	
	//Q&A
	int getQnaListCount(BoardVO b);
	List<BoardVO> getBoardQList(BoardVO b);
	List<BoardVO> getBoardQListVote(BoardVO b);
	List<BoardVO> getBoardQListNote(BoardVO b);
	List<BoardVO> getBoardQListScrap(BoardVO b);
	List<BoardVO> getBoardQListView(BoardVO b);
	
	//조회, 추가, 수정, 삭제
	void insertBoard(BoardVO b);
	BoardVO getBoardCont(int b_no);
	BoardVO getBoardCont2(int b_no);
	void editBoard(BoardVO eb);
	void replyBoard(BoardVO rb);
	void delBoard(int b_no);
	
	//추천반대
	void b_recommendp(int b_no);
	void b_recommendm(int b_no);
	
	//태그
	int getTagListCount(BoardVO b);
	List<BoardVO> getTagList(BoardVO b);
	List<BoardVO> getTagListVote(BoardVO b);
	List<BoardVO> getTagListNote(BoardVO b);
	List<BoardVO> getTagListScrap(BoardVO b);
	List<BoardVO> getTagListView(BoardVO b);
	
	//마이페이지
	int getMyBCount(BoardVO b);
	int getMyRCount(BoardVO b);
	List<BoardVO> getMyList(BoardVO b);
	
	//댓글
	List<BoardVO> listReply(int b_no);
	void addReply(BoardVO vo);
	void updateReply(BoardVO vo);
	void remove(int r_no);
	void r_recommendp(int r_no);
	void r_recommendm(int r_no);
	

}

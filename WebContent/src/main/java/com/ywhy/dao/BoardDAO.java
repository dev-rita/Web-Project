package com.ywhy.dao;

import java.util.List;

import com.ywhy.vo.BoardVO;

public interface BoardDAO {
	
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
	void updateHit(int b_no);
	BoardVO getBoardCont(int b_no);
	void editBbs(BoardVO eb);
	void updateLevel(BoardVO rb);
	void replyBoard(BoardVO rb);
	void delBoard(int b_no);
	
	//추천반대
//	void b_recommendp(int b_no);
//	void b_recommendm(int b_no);
	
	//태그
	int getTagListCount(BoardVO b);
	List<BoardVO> getTagList(BoardVO b);
	List<BoardVO> getTagListVote(BoardVO b);
	List<BoardVO> getTagListNote(BoardVO b);
	List<BoardVO> getTagListScrap(BoardVO b);
	List<BoardVO> getTagListView(BoardVO b);
	
	//마이페이지
	 int getMyBCount(BoardVO b);
	 List<BoardVO> getMyList(BoardVO b);
	 int getMemPoint(String mem_id);
	
	//댓글
	List<BoardVO> listReply(int b_no);
	void addReply(BoardVO vo);
	void updateReplyCnt(int b_no, int count);
	void updateReply(BoardVO vo);
	int getB_no(int r_no);
	void delReply(int r_no);
	void r_recommendp(int r_no);
	void r_recommendm(int r_no);
	
	 //게시글 좋아요
	   void b_recommendp(BoardVO rcm);   
	   void setRecCount(BoardVO rcm);
	   List<String> getMemId(int b_no);
	   
	   //게시글 싫어요
	//   void b_recommendm(BoardVO rcm);
}

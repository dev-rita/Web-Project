package com.ywhy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
	
	@Transactional
	@Override
	public BoardVO getBoardCont(int b_no) {
		this.boardDao.updateHit(b_no);//조회수 증가
		return this.boardDao.getBoardCont(b_no);//번호에 해당하는 레코드값을 가져옴.
	}

	@Override
	public BoardVO getBoardCont2(int b_no) {
		return this.boardDao.getBoardCont(b_no);
	}//수정폼에서는 조회수를 증가하지 않는다.

	@Override
	public void editBoard(BoardVO eb) {
		this.boardDao.editBbs(eb);//조회수 증가
	}

	@Override
	public void delBoard(int b_no) {
		this.boardDao.delBoard(b_no);
	}//게시물 삭제

	@Override
	public void b_recommendp(int b_no) {
		this.boardDao.b_recommendp(b_no);
	}//게시물 추천
	
	@Override
	public void b_recommendm(int b_no) {
		this.boardDao.b_recommendm(b_no);
	}//게시물 반대
	
	@Override
	public List<BoardVO> listReply(int b_no) {
		return this.boardDao.listReply(b_no);
	}//댓글 목록
	
	//스프링의 AOP를 통한 트랜잭션 적용
	@Transactional
	@Override
	public void addReply(BoardVO vo) {
		this.boardDao.addReply(vo);
		this.boardDao.updateReplyCnt(vo.getB_no(),1);//댓글이 추가되면 댓글 수 1증가
	}//댓글 작성

	@Override
	public void updateReply(BoardVO vo) {
		this.boardDao.updateReply(vo);
	}//댓글 수정
	
	//트랜잭션 적용
	@Transactional
	@Override
	public void remove(int r_no) {
		int b_no=this.boardDao.getB_no(r_no);//댓글번호로 게시판 번호값을 구함.
		this.boardDao.delReply(r_no);
		this.boardDao.updateReplyCnt(b_no,-1);//댓글을 삭제하면 댓글 개수 1감소
	}//댓글삭제

	
}

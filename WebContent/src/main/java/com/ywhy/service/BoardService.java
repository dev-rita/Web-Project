package com.ywhy.service;

import java.util.List;

import com.ywhy.vo.BoardVO;

public interface BoardService {	

	int getListCount(BoardVO b);
	List<BoardVO> getBoardList(BoardVO b);
	void insertBoard(BoardVO b);
}

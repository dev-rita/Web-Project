package com.ywhy.service;

import java.util.List;
import java.util.Map;

import com.ywhy.vo.BoardVO;


public interface AdminBoardService {

	int getQnaListCount(BoardVO b);

	List<BoardVO> getBoardQList(BoardVO b);
	
	void delete(String no);

}

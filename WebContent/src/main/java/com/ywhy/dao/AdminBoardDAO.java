package com.ywhy.dao;

import java.util.List;
import java.util.Map;

import com.ywhy.vo.BoardVO;

public interface AdminBoardDAO {

	int getQnaListCount(BoardVO b);

	List<BoardVO> getBoardQList(BoardVO b);
	
	void delete(String no);

}

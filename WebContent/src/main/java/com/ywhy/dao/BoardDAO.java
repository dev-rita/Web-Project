package com.ywhy.dao;

import java.util.List;
import com.ywhy.vo.BoardVO;

public interface BoardDAO {

	int getListCount(BoardVO b);
	List<BoardVO> getBoardList(BoardVO b);
	void insertBoard(BoardVO b);

}

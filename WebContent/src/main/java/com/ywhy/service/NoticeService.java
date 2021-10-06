package com.ywhy.service;

import java.util.List;

import com.ywhy.vo.BoardVO;
import com.ywhy.vo.NoticeVO;

public interface NoticeService {

	int getNoticeListCount(NoticeVO n);

	List<NoticeVO> getNoticeList(NoticeVO n);
	
	List<NoticeVO> getNoticePickList(NoticeVO n);

	List<NoticeVO> getNoticeListVote(NoticeVO n);

	List<NoticeVO> getNoticeListView(NoticeVO n);

	NoticeVO getNoticeCont(int n_no);

	//게시글 추천
	List<String> getMemId(int n_no);
	void n_recommendp(NoticeVO rcm);
	void setRecCount(NoticeVO rcm);
	
	void n_recommendm(int n_no);


}

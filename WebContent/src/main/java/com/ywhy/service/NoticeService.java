package com.ywhy.service;

import java.util.List;

import com.ywhy.vo.NoticeVO;

public interface NoticeService {

	int getNoticeListCount(NoticeVO n);

	List<NoticeVO> getNoticeList(NoticeVO n);

	List<NoticeVO> getNoticeListVote(NoticeVO n);

	List<NoticeVO> getNoticeListView(NoticeVO n);

	NoticeVO getNoticeCont(int n_no);

	void n_recommendp(int n_no);

	void n_recommendm(int n_no);

}

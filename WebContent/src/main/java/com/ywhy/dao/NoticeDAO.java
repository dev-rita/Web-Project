package com.ywhy.dao;

import java.util.List;

import com.ywhy.vo.BoardVO;
import com.ywhy.vo.NoticeVO;

public interface NoticeDAO {

	int getNoticeListCount(NoticeVO n);

	List<NoticeVO> getNoticeList(NoticeVO n);

	List<NoticeVO> getNoticePickList(NoticeVO n);
	
	List<NoticeVO> getNoticeListVote(NoticeVO n);

	List<NoticeVO> getNoticeListView(NoticeVO n);
	
	void updateNoticeHit(int n_no);
	
	NoticeVO getNoticeCont(int n_no);

	//게시글 좋아요
    void n_recommendp(NoticeVO rcm);   
    void setRecCount(NoticeVO rcm);
    List<String> getMemId(int n_no);

	void n_recommendm(int n_no);

	
}

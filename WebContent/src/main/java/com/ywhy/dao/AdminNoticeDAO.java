package com.ywhy.dao;

import java.util.List;

import com.ywhy.vo.NoticeVO;

public interface AdminNoticeDAO {

	int getNoticeListCount(NoticeVO b);

	List<NoticeVO> getNoticeList(NoticeVO b);

	void insertNotice(NoticeVO b);

	NoticeVO getAdminNoticeCont(int n_no);

	void editAdminNotice(NoticeVO eb);

	void deleteAdminNotice(String no);

	void pickAdminNotice(String no);

}

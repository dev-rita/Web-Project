package com.ywhy.service;

import java.util.List;

import com.ywhy.vo.NoticeVO;

public interface AdminNoticeService {

	int getNoticeListCount(NoticeVO b);

	List<NoticeVO> getNoticeList(NoticeVO b);

	void insertNotice(NoticeVO b);

	NoticeVO getAdminNoticeCont(int n_no);

	void editAdminNotice(NoticeVO eb);

	void deleteAdminNotice(String string);

}

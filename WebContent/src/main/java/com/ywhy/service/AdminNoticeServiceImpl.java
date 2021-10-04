package com.ywhy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ywhy.dao.AdminNoticeDAO;
import com.ywhy.vo.NoticeVO;

@Service
public class AdminNoticeServiceImpl implements AdminNoticeService {

	@Autowired
	private AdminNoticeDAO adminNoticeDao;
	
	@Override
	public int getNoticeListCount(NoticeVO b) {
		return this.adminNoticeDao.getNoticeListCount(b);
	}

	@Override
	public List<NoticeVO> getNoticeList(NoticeVO b) {
		return this.adminNoticeDao.getNoticeList(b);
	}

	@Override
	public void insertNotice(NoticeVO b) {
		this.adminNoticeDao.insertNotice(b);
	}

	@Override
	public NoticeVO getAdminNoticeCont(int n_no) {
		return this.adminNoticeDao.getAdminNoticeCont(n_no);
	}

	@Override
	 public void editAdminNotice(NoticeVO eb) {
	    this.adminNoticeDao.editAdminNotice(eb);
	 }

	@Override
	  public void deleteAdminNotice(String no) {
	    this.adminNoticeDao.deleteAdminNotice(no);
	 }

	@Override
	public void pickAdminNotice(String no) {
		this.adminNoticeDao.pickAdminNotice(no);
	}
	
	
}

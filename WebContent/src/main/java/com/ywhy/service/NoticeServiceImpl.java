package com.ywhy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ywhy.dao.NoticeDAO;
import com.ywhy.vo.BoardVO;
import com.ywhy.vo.NoticeVO;

@Service
public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	private NoticeDAO noticeDao;

	@Override
	public int getNoticeListCount(NoticeVO n) {
		return this.noticeDao.getNoticeListCount(n);
	}

	@Override
	   public List<NoticeVO> getNoticePickList(NoticeVO n) {
	      return this.noticeDao.getNoticePickList(n);
	   }
	
	@Override
	public List<NoticeVO> getNoticeList(NoticeVO n) {
		return this.noticeDao.getNoticeList(n);
	}

	@Override
	public List<NoticeVO> getNoticeListVote(NoticeVO n) {
		return this.noticeDao.getNoticeListVote(n);
	}

	@Override
	public List<NoticeVO> getNoticeListView(NoticeVO n) {
		return this.noticeDao.getNoticeListView(n);
	}
	
	@Transactional
	@Override
	public NoticeVO getNoticeCont(int n_no) {
		this.noticeDao.updateNoticeHit(n_no);//조회수 증가
		return this.noticeDao.getNoticeCont(n_no);
		
	}

	//게시물 좋아요
    @Override
    public void n_recommendp(NoticeVO rcm) {
       this.noticeDao.n_recommendp(rcm);
    } 

    @Override
    public void setRecCount(NoticeVO rcm) {
        this.noticeDao.setRecCount(rcm);
    }
 
    @Override
    public List<String> getMemId(int n_no) {
       return this.noticeDao.getMemId(n_no);
    }  
  
 	@Override 
	public void n_recommendm(int n_no) {
		this.noticeDao.n_recommendm(n_no);
	}

}

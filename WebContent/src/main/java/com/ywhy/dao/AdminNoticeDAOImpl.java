package com.ywhy.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ywhy.vo.NoticeVO;

@Repository
public class AdminNoticeDAOImpl implements AdminNoticeDAO {
	
	@Autowired
	private SqlSession sqlSession;


	@Override
	public int getNoticeListCount(NoticeVO b) {
		return this.sqlSession.selectOne("an_count",b);
	}

	@Override
	public List<NoticeVO> getNoticeList(NoticeVO b) {
		return this.sqlSession.selectList("an_list", b);
	}

	@Override
	public void insertNotice(NoticeVO b) {
		this.sqlSession.insert("n_insert", b);
	}

	@Override
	public NoticeVO getAdminNoticeCont(int n_no) {
		return this.sqlSession.selectOne("an_cont",n_no);
	}

	@Override
	public void editAdminNotice(NoticeVO eb) {
	    this.sqlSession.update("n_edit", eb);
	}

	 @Override
	public void deleteAdminNotice(String no) {
	    this.sqlSession.delete("n_del", no);
	}

	@Override
	public void pickAdminNotice(String no) {
		this.sqlSession.update("n_pick", no);
	}
}

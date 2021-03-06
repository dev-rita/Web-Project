package com.ywhy.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ywhy.vo.BoardVO;
import com.ywhy.vo.NoticeVO;

@Repository
public class NoticeDAOImpl implements NoticeDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int getNoticeListCount(NoticeVO n) {
		return this.sqlSession.selectOne("n_count",n);
	}
	
	@Override
	   public List<NoticeVO> getNoticePickList(NoticeVO n) {
	      return this.sqlSession.selectList("notice_pick_list",n);
	   }
	
	@Override
	public List<NoticeVO> getNoticeList(NoticeVO n) {
		return this.sqlSession.selectList("notice_list",n);
	}

	@Override
	public List<NoticeVO> getNoticeListVote(NoticeVO n) {
		return this.sqlSession.selectList("notice_list_vote",n);
	}

	@Override
	public List<NoticeVO> getNoticeListView(NoticeVO n) {
		return this.sqlSession.selectList("notice_list_view",n);
	}

	@Override
	public void updateNoticeHit(int n_no) {
		this.sqlSession.update("n_hit",n_no);
	}
	
	@Override
	public NoticeVO getNoticeCont(int n_no) {
		return this.sqlSession.selectOne("n_cont",n_no);
	}

	//게시글 좋아요
    @Override
    public void n_recommendp(NoticeVO rcm) {
       this.sqlSession.insert("n_rec_p", rcm);
    }
    @Override
    public void setRecCount(NoticeVO rcm) {
        this.sqlSession.update("n_rec_count",rcm);
    } 

    @Override
    public List<String> getMemId(int n_no) {
       return this.sqlSession.selectList("n_getMemId", n_no);
    }

	@Override
	public void n_recommendm(int n_no) {
		this.sqlSession.update("n_rec_m",n_no);
	}

}

package com.ywhy.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ywhy.vo.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	//커뮤니티
	@Override
	public int getListCount(BoardVO b) {
		return this.sqlSession.selectOne("b_count",b);
	}//총 레코드 개수
	
	@Override
	public List<BoardVO> getBoardList(BoardVO b) {
		return this.sqlSession.selectList("board_list", b);
	}//게시판 목록 (최신순)
	
	@Override
	public List<BoardVO> getBoardListVote(BoardVO b) {
		return this.sqlSession.selectList("board_list_vote", b);
	}//게시판 목록 추천순
	
	@Override
	public List<BoardVO> getBoardListNote(BoardVO b) {
		return this.sqlSession.selectList("board_list_note", b);
	}//게시판 목록 댓글순
	
	@Override
	public List<BoardVO> getBoardListScrap(BoardVO b) {
		return this.sqlSession.selectList("board_list_scrap", b);
	}//게시판 목록 추천순
	
	@Override
	public List<BoardVO> getBoardListView(BoardVO b) {
		return this.sqlSession.selectList("board_list_view", b);
	}//게시판 목록 댓글순

	
	//Q&A
	   @Override
	   public int getQnaListCount(BoardVO b) {
	      return this.sqlSession.selectOne("bq_count",b);
	   }
	   @Override
	   public List<BoardVO> getBoardQList(BoardVO b) {
	      return this.sqlSession.selectList("boardQ_list",b);
	   }
	   @Override
	   public List<BoardVO> getBoardQListVote(BoardVO b) {
	      return this.sqlSession.selectList("boardQ_list_vote", b);
	   }
	   @Override
	   public List<BoardVO> getBoardQListNote(BoardVO b) {
	      return this.sqlSession.selectList("boardQ_list_note", b);
	   }
	   @Override
	   public List<BoardVO> getBoardQListScrap(BoardVO b) {
	      return this.sqlSession.selectList("boardQ_list_scrap", b);
	   }
	   @Override
	   public List<BoardVO> getBoardQListView(BoardVO b) {
	      return this.sqlSession.selectList("boardQ_list_view", b);
	   }	
	
	//조회, 추가, 수정, 삭제
	@Override
	public void insertBoard(BoardVO b) {
		this.sqlSession.insert("b_in",b);
	}//게시판 저장

	@Override
	public void updateHit(int b_no) {
		this.sqlSession.update("b_hit",b_no);
	}//조회수 증가

	@Override
	public BoardVO getBoardCont(int b_no) {
		return this.sqlSession.selectOne("b_cont",b_no);
	}//내용보기

	@Override
	public void editBbs(BoardVO eb) {
		this.sqlSession.update("b_edit", eb);	
	}//게시물 수정
	
	@Override
	public void updateLevel(BoardVO rb) {
		this.sqlSession.update("reply_up",rb);		
	}//답변 레벨 증가

	@Override
	public void replyBoard(BoardVO rb) {
		this.sqlSession.insert("reply_in",rb);		
	}//답변 저장
	
	@Override
	public void delBoard(int b_no) {
		this.sqlSession.delete("b_del",b_no);
	}//게시물 삭제
	
	//추천반대
//	@Override
//	public void b_recommendp(int b_no) {
//		this.sqlSession.update("b_rec_p",b_no);
//	}//게시물 추천
//	
//	@Override
//	public void b_recommendm(int b_no) {
//		this.sqlSession.update("b_rec_m",b_no);
//	}//게시물 반대
	
	//태그
	   @Override
	   public int getTagListCount(BoardVO b) {
	      return this.sqlSession.selectOne("tag_count",b);
	   }
	   @Override
	   public List<BoardVO> getTagList(BoardVO b) {
	      return this.sqlSession.selectList("tag_list",b);
	   }
	   @Override
	   public List<BoardVO> getTagListVote(BoardVO b) {
	      return this.sqlSession.selectList("tag_list_vote",b);
	   }
	   @Override
	   public List<BoardVO> getTagListNote(BoardVO b) {
	      return this.sqlSession.selectList("tag_list_note",b);
	   }
	   @Override
	   public List<BoardVO> getTagListScrap(BoardVO b) {
	      return this.sqlSession.selectList("tag_list_scrap",b);
	   }
	   @Override
	   public List<BoardVO> getTagListView(BoardVO b) {
	      return this.sqlSession.selectList("tag_list_view",b);
	   }
	
	   //마이페이지
	      @Override
	      public int getMyBCount(BoardVO b) {
	         return this.sqlSession.selectOne("my_bcount",b);
	      }

	      @Override
	      public List<BoardVO> getMyList(BoardVO b) {
	         return this.sqlSession.selectList("my_list",b);
	      } 
	      
	      @Override
	      public int getMemPoint(String mem_id) {
	         return this.sqlSession.selectOne("mem_point", mem_id);
	      }
	      
	//댓글
	@Override
	public List<BoardVO> listReply(int b_no) {
		return this.sqlSession.selectList("r_list",b_no);
	}//댓글 목록

	@Override
	public void addReply(BoardVO vo) {
		this.sqlSession.insert("r_add",vo);
	}//댓글작성

	@Override
	public void updateReplyCnt(int b_no, int count) {
		Map<String,Object> pm=new HashMap<>();//키, 값 쌍으로 저장하는 컬렉션 제네릭 선언
		
		pm.put("b_no", b_no);//좌측의 키이름을 매퍼태그에서 참조해서 값을 가져옴.
		pm.put("count",count);
		
		this.sqlSession.update("updateReplyCnt",pm);//updateReplyCnt는  board.xml에 설정할 유일한 update 아이디명.
	}//댓글이 추가되면 댓글 수 1증가, 댓글이 삭제되면 댓글 수 1감소

	@Override
	public void updateReply(BoardVO vo) {
		this.sqlSession.update("r_edit", vo);
	}//댓글 수정

	@Override
	public int getB_no(int r_no) {
		return this.sqlSession.selectOne("r_b_no",r_no);
	}//댓글번호에 해당하는 게시판 번호 알아내기

	@Override
	public void delReply(int r_no) {
		this.sqlSession.delete("r_del",r_no);
	}//댓글 삭제

	@Override
	public void r_recommendp(int r_no) {
		this.sqlSession.update("r_rec_p",r_no);
	}//댓글 추천
	
	@Override
	public void r_recommendm(int r_no) {
		this.sqlSession.update("r_rec_m",r_no);
	}//댓글 반대

	   //게시글 좋아요
	   @Override
	   public void b_recommendp(BoardVO rcm) {
	      this.sqlSession.insert("b_rec_p", rcm);
	   }
	   @Override
	   public void setRecCount(BoardVO rcm) {
	       this.sqlSession.update("rec_count",rcm);
	   }

	   @Override
	   public List<String> getMemId(int b_no) {
	      return this.sqlSession.selectList("getMemId", b_no);
	   }
	   
	//   @Override
	//   public void b_recommendm(BoardVO rcm) {
//	      this.sqlSession.insert("b_rec_m",rcm);
	//   }//게시물 반대
	
}

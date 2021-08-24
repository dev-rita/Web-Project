package com.ywhy.vo;

import lombok.Data;

@Data
public class BoardVO {
	
	//되도록이면 테이블 컬럼명과 빈 클래스 변수명을 같게 한다.
	private int b_no;
	private String b_name;
	private String b_title;
	private String b_pwd;
	private String b_cont;
	private String b_file;
	private int b_hit;
	private int b_ref;//관리자 답글에서 원본글과 답변글을 묶어주는 그룹번호 역할
	private int b_step;//관리자 답글에서 원본글이면 0, 첫번째 답변글이면 1, 두번째 답변글이면2, 
	//즉 원본글과 답변글을 구분하는 번호값이면서 몇번째 답변글인가를 알려줌.
	private int b_level;//관리자 답글에서 답변글 정렬순서
	private String b_date;
	
	//페이징 즉 쪽나누기
	private int startrow;//시작행번호
	private int endrow;//끝행번호
	
	//검색 기능 관련
	private String find_field;//검색필드
	private String find_name;//검색어
}

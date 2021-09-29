package com.ywhy.vo;




import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberVO {

	private String mem_id;
	private String mem_pwd;
	private String mem_name; //이름
	private String mem_nick; //닉네임
	private String mem_img; //프로필 사진
	private String mem_mail;
	private String mem_key; //메일 인증 키
	private String mem_signupdate; //가입날짜
	private String mem_logindate; //로그인 날짜
	private int mem_point; //회원활동 포인트
	private String mem_class;
	
	//관리자 회원목록 페이징 관련 변수
	private int startrow;
	private int endrow;
	
	//관리자 회원목록 검색필드와 관련 변수
	private String find_name;//검색어
	private String find_field;//검색필드
}

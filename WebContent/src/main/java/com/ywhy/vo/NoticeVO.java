package com.ywhy.vo;

import lombok.Data;

@Data
public class NoticeVO {
	private int n_no;
	private String n_name;
	private String n_cate;
	private String n_title;
	private String n_pwd;
	private String n_cont;
	private String n_file;
	private String n_tag;
	private int n_hit;
	private int n_rec;//추천
	private String n_date;
	private String mem_id;
	private int n_pick;
	//관리자 회원목록 페이징 관련 변수
	private int startrow;
	private int endrow;
		
	//관리자 회원목록 검색필드와 관련 변수
	private String find_name;//검색어
	private String find_field;//검색필드
	
}

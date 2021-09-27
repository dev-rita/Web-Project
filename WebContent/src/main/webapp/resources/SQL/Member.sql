--회원가입 테이블 만들기
create table ywhyMember(
	mem_id varchar2(100) constraint member_memid_pk primary key, --회원 아이디
	mem_pwd varchar2(200) constraint member_mempwd_nn not null, --회원 비밀번호
	mem_name varchar2(30) constraint member_memname_nn not null, --회원 이름
	mem_nick varchar2(50) constraint member_memnick_nn not null, --회원 닉네임
	mem_img varchar2(50) default 'upload/default.png', --회원 기본 프로필 사진
	mem_mail varchar2(200) constraint member_memmail_nn not null, --회원 이메일
	mem_key varchar2(100),
	mem_sessionkey varchar2(50) default 'none', --로그인 유지
	mem_sessionlimit timestamp, --로그인 유지
	mem_signupdate date, --가입날짜
	mem_logindate date, --로그인 날짜
	mem_point int default 0, --회원활동 포인트
	mem_class varchar2(20) default '일반' --사용자 권한이면 1 관리자 권한이면 9
);

--ywhyMember테이블 검색
select * from YWHYMEMBER;

--ywhyMember테이블 중 회원 하나 관리자 권한 주기
update YWHYMEMBER set mem_class='관리자' where mem_id='aaaaa';
update YWHYMEMBER set mem_class='관리자' where mem_id='sssss';












drop table ywhyMember;

delete from ywhyMember;
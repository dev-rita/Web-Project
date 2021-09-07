--회원가입 테이블 만들기
create table ywhyMember(
	mem_id varchar2(100) constraint member_memid_pk primary key, --회원 아이디
	mem_pwd varchar2(200) constraint member_mempwd_nn not null, --회원 비밀번호
	mem_name varchar2(30) constraint member_memname_nn not null, --회원 이름
	mem_nick varchar2(50) constraint member_memnick_nn not null, --회원 닉네임
	mem_mail varchar2(200) constraint member_memmail_nn not null, --회원 이메일
	mem_key varchar2(100),
	mem_date date, --가입날짜
	mem_class int default 1 --사용자 권한이면 1 관리자 권한이면 9
);

--ywhyMember테이블 검색
select * from YWHYMEMBER;














drop table ywhyMember;

delete from ywhyMember;
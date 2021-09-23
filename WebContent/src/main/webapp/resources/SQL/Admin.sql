--관리자 테이블 생성
create table ywhyAdmin(
	admin_no int, --번호
	admin_id varchar2(50) primary key, --관리자 아이디
	admin_pwd varchar2(100) not null, --관리자 비번 암호화
	admin_name varchar2(50) not null, --관리자 이름
	admin_nick varchar2(50) not null, --관리자 별명
	admin_date date--등록날짜
);

select * from ywhyAdmin;
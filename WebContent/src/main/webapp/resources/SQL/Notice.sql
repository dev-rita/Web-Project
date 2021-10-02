create table notice(
 	n_no number(38) primary key --번호
 	,mem_id varchar2(100) constraint board_mem_id_fk references ywhyMember(mem_id) on delete cascade
	,n_name varchar2(100)  not null--작성자
	,n_cate varchar2(100)--카테고리
	,n_title varchar2(200) not null--제목
	,n_cont varchar2(4000) not null --글내용
	,n_tag varchar2(200) --태그명
	,n_hit number(38) default 0 --조회수
	,n_rec number(38) default 0 --추천수
	,n_pick number(1) default 0
	,n_date date --등록날짜
);

update notice set n_pick=1 where n_no=7;

drop table notice;
select * from notice order by n_no desc;

alter table notice add n_pick number(1) default 0;
alter table notice add mem_id varchar2(100) constraint notice_mem_id_fk references ywhyMember(mem_id) on delete cascade;

select * from notice order by n_no desc;
--g_no_seq 시퀀스 생성
create sequence n_no_seq
start with 1
increment by 1
nocache;

--샘플테이터 저장
insert into gongji (gongji_no,gongji_name,gongji_title,gongji_pwd,gongji_cont,gongji_date)
values(g_no_seq.nextval, '관리자','공지제목','7777','공지내용',sysdate);
--bbs 자료실 테이블 생성
create table board(
	b_no number(38) primary key --번호
	,b_name varchar2(100)  not null--작성자
	,b_cate varchar2(100)--카테고리
	,b_title varchar2(200) not null--제목
	,b_pwd varchar2(20) --비밀번호
	,b_cont varchar2(4000) not null --글내용
	,b_file varchar2(200) --이진파일명
	,b_tag varchar2(200) --태그명
	,b_hit number(38) default 0 --조회수
	,b_ref number(38) --원본글과 답변글을 묶어주는 글 그룹번호
	,b_step number(38) --원본글이면 0, 첫번째 답변글이면 1, 두번째 답변글이면 2... =>원본글과 답변글을 구분하는 값이면서 며번째 답변글인가 알려준다.
	,b_level int --답변글 정렬순서
	,b_date date --등록날짜
);


insert into board values(b_no_seq.nextval,'김태완',0,'HTML5+CSS3','123','예브게',null,'tag',0,0,0,0,sysdate);
insert into board values(b_no_seq.nextval,'이의수',0,'JAVASCRIPT','123','동적',null,'tag',0,0,0,0,sysdate);
insert into board values(b_no_seq.nextval,'이승연',0,'SPRING','123','프레임워크',null,'tag',0,0,0,0,sysdate);
insert into board values(b_no_seq.nextval,'정희선',0,'JSP2.3','123','안녕하살법',null,'tag',0,0,0,0,sysdate);
insert into board values (b_no_seq.nextval,'최범균',0,'jsp 2.3','123','내용',null,'tag',0,0,0,0,sysdate);
insert into board values (b_no_seq.nextval,'강환수',0,'c언어 배우기','123','내용',null,'tag',0,0,0,0,sysdate);
insert into board values (b_no_seq.nextval,'남궁성',0,'자바의  정석','123','내용',null,'tag',0,0,0,0,sysdate);
insert into board values (b_no_seq.nextval,'정우영',0,'리눅스  구축관리','123','내용',null,'tag',0,0,0,0,sysdate);
insert into board values (b_no_seq.nextval,'장윤기',0,'자바 유틸리티','123','내용',null,'tag',0,0,0,0,sysdate);
insert into board values (b_no_seq.nextval,'김운아',0,'반응형 웹페이지 만들기','123','내용',null,'tag',0,0,0,0,sysdate);


select * from board order by b_no desc;

--b_no_seq 시퀀스 생성
create sequence b_no_seq
start with 1 --1부터 시작
increment by 1 --1씩 증가
nocache; --임시 메모리 사용 안함

--시퀀스 다음 번호값 확인
select b_no_seq.nextval from dual;

drop sequence b_no_seq;

drop table board;

select constraint_name, constraint_type, table_name, r_constraint_name from user_constraints
where table_name='BOARD';

alter table board modify b_name constraint board_bname_nn not null;

alter table board drop constraint SYS_C0010412;
create table history(
	h_date date not null
	,h_cont varchar2(4000) not null
);

insert into history values(to_date('1988-01-09','YYYY-MM-DD'),'멤버 W 탄생')
insert into history values(to_date('1999-08-26','YYYY-MM-DD'),'멤버 H 탄생')
insert into history values(to_date('1995-09-02','YYYY-MM-DD'),'멤버 Y 탄생')

insert into history values(to_date('2021-04-12','YYYY-MM-DD'),'훈련 시작');
insert into history values(to_date('2021-05-10','YYYY-MM-DD'),'Team:WHY 결성');
insert into history values(to_date('2021-05-24','YYYY-MM-DD'),'프로젝트:YWHY 선정');

insert into history values(to_date('2021-08-09','YYYY-MM-DD'),'최초 가입자 : aaaaa');
insert into history values(to_date('2021-08-25','YYYY-MM-DD'),'최초 가입자 aaaaa가 최초 관리자로 승급');

insert into history values(to_date('2021-12-25','YYYY-MM-DD'),'공식 런칭 예정');

select * from history
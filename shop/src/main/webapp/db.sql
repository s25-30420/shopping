create table tbl_resv(
	resv_no char(8) not null primary key,
	resv_date char(8),
	court_no char(4),
	cust_no char(4)
);

select * from tbl_resv
insert into TBL_RESV values('20230001', '20230101', 'C001', '1005');
insert into TBL_RESV values('20230002', '20230101', 'C002', '1004');
insert into TBL_RESV values('20230003', '20230101', 'C003', '1003');
insert into TBL_RESV values('20230004', '20230101', 'C004', '1002');
insert into TBL_RESV values('20230005', '20230101', 'C005', '1001');




create table tbl_shop(
	giftnim varchar2(30),
	cust_no varchar2(30) not null primary key,
	pay varchar2(30),
	requests varchar2(100)
);

drop table tbl_shop

insert into tbl_shop values('beyblade', '1234', 'toss', '문앞에_놓아주세요');
insert into tbl_shop values('nintando', '2341', 'kakao', '배송전에_연락바랍니다');
insert into tbl_shop values('pokemon', '3412', 'kb', '초인종_눌러주세요');
insert into tbl_shop values('overwatch', '4123', 'shinhan', '부재시_문앞에_놓아주세요');
insert into tbl_shop values('kamanrider', '4321', 'minsaeng', '배달보관함에_넣어주세요');













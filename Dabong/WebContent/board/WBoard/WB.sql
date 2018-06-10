drop table WR_BOARD;

CREATE TABLE WR_BOARD(
WBNUM NUMBER(10) NOT NULL,
WID VARCHAR2(30) NOT NULL,
WPASS VARCHAR2(30) NOT NULL,
WNAME VARCHAR2(30) NOT NULL,
WBSUB VARCHAR2(100) NOT NULL,
WBCONT VARCHAR2(3000) NOT NULL,
WBWEEK VARCHAR2(50) NOT NULL,
WBPOSTIME VARCHAR2(50) NOT NULL,
WBAREA VARCHAR2(20) NOT NULL,
WBRELIG VARCHAR2(20) NOT NULL,
WBGENV VARCHAR2(20) NOT NULL,
WBHOPE VARCHAR2(20) NOT NULL,
WBHOPEVE VARCHAR2(20) NOT NULL,
WBDATE DATE NOT NULL,
WBVISIT NUMBER(10) NOT NULL,
WBFILE VARCHAR2(1500),
WBREADCOUNT NUMBER NOT NULL,
PRIMARY KEY(WBNUM)
);


alter table WR_BOARD add constraint welfareId foreign key(wid) references WR_MEMBER(wid) on delete cascade;

alter table WR_BOARD modify(wbweek varchar2(200));
alter table WR_BOARD modify(wbhopeve varchar2(50));
alter table WR_BOARD modify(wbcont varchar2(4000));
insert into WR_BOARD (WBNUM, WID, WPASS, WNAME, WBSUB, WBCONT, WBWEEK, WBPOSTIME, WBAREA, WBRELIG, WBGENV, WBHOPE, WBHOPEVE, WBDATE, WBVISIT, WBFILE, WBREADCOUNT) VALUES(1, 'ADMIN', 1111, 'ADMIN', 'EX', 'HI', 'MONDAY', 'WHENEVER', 'SEOUL', 'NOTHING', 'M', 'WHATEVER', 'NONE', sysdate, 2, 'NONE', 2)

select * from WR_BOARD;

DROP TABLE WR_REPLY;

CREATE TABLE WR_REPLY(
WRNUM NUMBER(10) NOT NULL,
USID VARCHAR2(30) NOT NULL,
UPASS VARCHAR2(30) NOT NULL,
WRCONT VARCHAR2(200) NOT NULL,
WRDATE DATE NOT NULL,
WRSECRET VARCHAR2(15) NOT NULL,
PRIMARY KEY(WRNUM)
);
select * from WR_REPLY;

delete from WR_BOARD

select WBNUM,WID,WPASS,WNAME,WBSUB,WBCONT, 
				WBWEEK, WBPOSTIME, WBAREA, WBRELIG, WBGENV, WBHOPE, 
				WBHOPEVE, WBDATE, WBVISIT, WBFILE, WBREADCOUNT from 
				(select * from WR_BOARD 
			order by WBNUM desc);

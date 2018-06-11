DROP TABLE VT_BOARD;

CREATE TABLE VT_BOARD(
	VBNUM NUMBER(10) NOT NULL,  
	VID VARCHAR2(30) NOT NULL,
	VPASS VARCHAR2(30) NOT NULL,
	VNAME VARCHAR2(30) NOT NULL,    
	VBSUB VARCHAR2(100) NOT NULL,   
	VBCONT VARCHAR2(4000) NOT NULL,    
	VBWEEK VARCHAR2(200) NOT NULL,  
	VBPOSTIME VARCHAR2(50) NOT NULL,   
	VBAREA VARCHAR2(20) NOT NULL,   
	VBRELIG VARCHAR2(20) NOT NULL,   
	VBCHRAC VARCHAR2(20) NOT NULL,   
	VBEXPER VARCHAR2(20) NOT NULL,   
	VBEXCONT VARCHAR2(300) NOT NULL,  
	VBCERTI  VARCHAR2(1500),
	VBDATE DATE NOT NULL,     
	VBVISIT NUMBER(10) NOT NULL, 
	VBREADCOUNT NUMBER NOT NULL,
	PRIMARY KEY(VBNUM) 
);

select VID from VT_BOARD minus select VID from VT_MEMBER;

select * from VT_BOARD where VID = 'qwer';

delete from VT_BOARD where VID = 'qwer';

alter table VT_BOARD add constraint volunteerId foreign key(vid) references VT_MEMBER(vid) on delete cascade;

alter table VT_BOARD modify(vbcont varchar2(4000));

insert into VT_BOARD (VBNUM, VID, VPASS, VNAME, VBSUB, VBCONT, VBWEEK, VBPOSTIME, VBAREA, VBRELIG, VBCHRAC, VBEXPER, VBEXCONT, VBCERTI, VBDATE, VBVISIT, VBREADCOUNT) VALUES
										(1, 'ADMIN', 1111, 'ADMIN', 'EX', 'HI', 'MONDAY', 'WHENEVER', 'SEOUL', 'NOTHING', 'ACTIVE', 'NONE', 'NOTHING', 'NONE', sysdate, 2, 2)

SELECT * FROM VT_BOARD;

DROP SEQUENCE VT_BOARD_SEQ;

SELECT VBNUM, VID, VPASS, VNAME, VBSUB, VBCONT, VBWEEK, VBPOSTIME, VBAREA, VBRELIG, VBCHRAC, VBEXPER, VBEXCONT, VBCERTI, VBDATE, VBVISIT
FROM (SELECT * FROM VT_BOARD ORDER BY VBNUM DESC);

select * from (select rownum rnum, VBNUM, VID, VNAME, VBSUB, VBCONT, 
	VBWEEK, VBPOSTIME, VBAREA, VBRELIG, VBCHRAC, VBEXPER, 
	VBEXCONT, VBDATE, VBVISIT, VBCERTI, VBREADCOUNT from 
	(select * from VT_BOARD order by VBNUM desc))
	where rnum>=1 
	
delete from VT_BOARD

/*
drop table ROOM;

CREATE TABLE ROOM (
ROOMNO numeric(3) primary key,
ROOMTYPE VARCHAR(8) not null, 
ROOMFEE smallmoney CHECK (ROOMFEE > 0) not null);

insert into ROOM values('200','Single', 50);
insert into ROOM values('201','Family', 80);
insert into ROOM values('202','Twin', 65);
insert into ROOM values('203','Double', 75);

select * from ROOM;
*/

/*
drop table BOOKING;
*/

/*
CREATE TABLE BOOKING (
BOOKCODE numeric(3) identity (100,5) primary key,
STARTDATE date not null, 
ENDDATE date not null,
ROOMNO numeric(3) foreign key REFERENCES ROOM(ROOMNO));

select * from BOOKING;
*/

/*
insert into BOOKING (STARTDATE, ENDDATE, ROOMNO)
values('8-Jun-2022', '18-Jun-2022', 200);

insert into BOOKING (STARTDATE, ENDDATE, ROOMNO)
values('18-Aug-2022', '25-Aug-2022', 201);

insert into BOOKING (STARTDATE, ENDDATE, ROOMNO)
values('2-Dec-2022', '20-Dec-2022', 202);

insert into BOOKING (STARTDATE, ENDDATE, ROOMNO)
values('23-Nov-2022', '30-Nov-2022', 203);

select * from BOOKING;
*/

/*
ALTER TABLE BOOKING
ADD PhoneNo varchar(15) not null DEFAULT '555-0554432';
*/

/*
UPDATE ROOM
SET ROOMFEE = ROOMFEE*1.1
WHERE ROOMTYPE = 'Single';
*/

/*
SELECT ROOM.ROOMNO, ROOM.ROOMTYPE, ROOM.ROOMFEE, BOOKING.STARTDATE
FROM ROOM INNER JOIN BOOKING ON ROOM.ROOMNO = BOOKING.ROOMNO; 
*/








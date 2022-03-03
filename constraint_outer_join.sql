DROP DATABASE LAB4;
CREATE DATABASE LAB4;

drop table BOOKING
drop table ROOM
drop table CUSTOMER

CREATE TABLE CUSTOMER (
CUSTID int identity(10000,1) not null PRIMARY KEY,
CName VARCHAR(50) not null,
CAddress VARCHAR(50) not null);

/*********************/

CREATE TABLE ROOM (
ROOMNO int not null PRIMARY KEY,
ROOMTYPE VARCHAR(50) not null,
ROOMFEE int CHECK (ROOMFEE > 0) not null);

/*********************/

CREATE TABLE BOOKING (
CUSTID int identity(10000, 1) not null foreign key REFERENCES CUSTOMER(CUSTID),
StartDate date not null,
EndDate date not null,
PRIMARY KEY (StartDate, CUSTID, ROOMNO),
ROOMNO int not null foreign key REFERENCES ROOM(ROOMNO));

/*********************/

SET IDENTITY_INSERT CUSTOMER off
insert into CUSTOMER (CName, CAddress) values('Ben Johnson', '12 Happy Road');
insert into CUSTOMER (CName, CAddress) values('Brendan McCullen', '35 Covid Avenue');
insert into CUSTOMER (CName, CAddress) values('Sam Herman', '2 Alpaca Drive');
insert into CUSTOMER (CName, CAddress) values('Isaac Barry', '56 Waterford View');

/**********************/

insert into ROOM values(200, 'Single', 50);
insert into ROOM values(201, 'Family', 80);
insert into ROOM values(202, 'Twin', 65);
insert into ROOM values(203, 'Double', 75);

/*********************/

SET IDENTITY_INSERT BOOKING off
insert into BOOKING (StartDate, EndDate, ROOMNO) values('2022-06-08', '2022-06-08', 200);
insert into BOOKING (StartDate, EndDate, ROOMNO) values('2022-08-12', '2022-08-25', 201);
insert into BOOKING (StartDate, EndDate, ROOMNO) values('2022-12-10', '2022-12-24', 202);
insert into BOOKING (StartDate, EndDate, ROOMNO) values('2022-10-23', '2022-10-30', 203);

/**********************/

UPDATE ROOM
SET ROOMFEE = ROOMFEE * 1.1
WHERE ROOMTYPE = 'Single';

SELECT BOOKING.ROOMNO, ROOM.ROOMTYPE, ROOM.ROOMFEE, BOOKING.StartDate, BOOKING.EndDate, CUSTOMER.CName, CUSTOMER.CAddress
FROM CUSTOMER
FULL OUTER JOIN BOOKING ON CUSTOMER.CUSTID = BOOKING.CUSTID
FULL OUTER JOIN ROOM ON ROOM.ROOMNO = BOOKING.ROOMNO
ORDER BY CUSTOMER.CUSTID;
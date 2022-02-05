CREATE LOGIN Ben WITH PASSWORD = 'password' ;
USE master
IF EXISTS(select * from sys.databases where name='PracticeDB')

DROP DATABASE PracticeDB;
GO
CREATE DATABASE PracticeDB;
GO
Use PracticeDB
create user UserBen from login Ben;
GO
alter role [db_owner] add member UserBen;
use PracticeDB
grant control on database::practicedb to UserBen;
go
grant create table, alter, delete, execute, insert, references, select, 
update to UserBen;

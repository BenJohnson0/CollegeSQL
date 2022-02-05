/*use MYDATABASE;

CREATE TABLE author (
AuthNo NUMeric(6) identity (1,1) primary key,
AName VARCHAR(50) not null,
CDateOfBirth DATE);
*/

insert into author values('J.K. Rowling','1965-07-31');
insert into author(AName) values('Roald Dahl');
insert into author values('A.A. Milne','1882-01-18');
insert into author values('Beatrix Potter','1886-07-28');
CREATE TABLE book (
ISBN varchar(13) primary key,
Title VARCHAR(50) not null,
DateWritten DATE not null,
price money,
AuthNo Numeric(6) not null);

insert into book values('ABC1','Harry Potter and the Prisoner of Azkaban', '1999', 6.99, 1);
insert into book values('ABC2','Harry Potter and smt else', '1999', 6.99, 1);
insert into book values('ABC3','Matilda', '1988', 9.99, 2);

drop table test;

CREATE TABLE test (
testNo NUMeric(6) identity (20000,1) primary key,
testCurrent bit default 1,
testName VARCHAR(50) not null,
testDateOfBirth DATE not null CHECK  (DATEDIFF(YEAR, testDateOfBirth, GetDate()) >= 18),
testAmountOwed smallmoney null,
testEMail VARCHAR(50) null unique,
testNoChildren tinyint default 0,
testRenewDate DATE default getdate() + 365);
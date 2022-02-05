/*
create table owners(owner_id numeric(6) not null unique,
owner_Name VARCHAR(50) not null, 
owner_EMail VARCHAR(50) not null unique,
owner_address VARCHAR(50) not null unique);
*/

/*
create table cars_table(owner_id numeric(6) not null,
car_brand VARCHAR(50) not null, 
car_capacity VARCHAR(50) not null,
car_reg VARCHAR(50) not null unique,
car_colour VARCHAR(50) not null);
*/

/*
insert into owners values(1, 'Ken Devlin', 'ken@dit.ie', '12 Happy Street');
insert into owners values(2, 'Fred Bloggs', 'fred@ibm.ie', '56 Sad Street');
insert into owners values(3, 'Sam Herman', 'sam@dit.ie', '47 Wicklow Street');
insert into owners values(4, 'Aaron Pender', 'aaron@dit.ie', '76 Angry Street');
*/

/*
insert into cars_table values(1, 'Toyota Lexus', 6, '07D11211', 'silver');
insert into cars_table values(1, 'Volkswagen Golf', 5, '06D12831', 'black');
insert into cars_table values(1, 'Audi 100', 5, '191D10800', 'white');
insert into cars_table values(2, 'Ford Escort', 5, '182D2002', 'brown');
insert into cars_table values(2, 'Ford Anglia', 4, '151D0363', 'black');
insert into cars_table values(3, 'Bugatti', 2, '192D1', 'red');
insert into cars_table values(4, 'Porsche', 2, '211D2', 'black');
*/

select owners.owner_id, owners.owner_Name, owners.owner_EMail, cars_table.car_colour, cars_table.car_brand, cars_table.car_capacity, cars_table.car_reg
from owners 
inner join cars_table on owners.owner_id = cars_tabl.owner_ID;











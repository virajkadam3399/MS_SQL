use demodb;

create table Customer(c_id int primary key, c_name varchar(50), c_address varchar(max), city varchar(50));

insert into Customer values (1, 'John', 'Kotharud no.1','Pune');
insert into Customer values (2, 'David', 'Kotharud no.2','Pune');
insert into Customer values (3, 'Peter', 'Kotharud no.3','Pune');
insert into Customer values (4, 'Maxwell', 'Kotharud no.4','Pune');
insert into Customer values (5, 'Joe', 'Kotharud no.5','Pune');


select * from Customer;

create table [order] (ord_id int primary key, item varchar(50), quantity int, price int, c_id int foreign key references Customer(c_id));

insert into [order] values(11, 'Hardisk', 2, 100, 2);
insert into [order] values(22, 'Ram', 1, 300, 1);
insert into [order] values(33, 'Printer', 3, 500, 4);
insert into [order] values(44, 'Mouse', 5, 800, 3);
insert into [order] values(55, 'Keyboard', 3, 400, 3);
insert into [order] values(66, 'USB', 2, 900, 1);
insert into [order] values(77, 'USB', 2, 900, 5);
insert into [order] values(88, 'USB', 2, 900, 6);


select * from [order];

alter table [order] drop constraint FK__order__c_id__44FF419A;        /*foreign key delete using alter command */

alter table [order] add foreign key (c_id) references Customer(c_id);  /*foreign key add using alter command */


alter table Customer add c_age int;                   /*add new column using alter command */
update Customer set c_age = 20 where c_id = 1;
alter table Customer drop column c_age;				  /*delete column using alter command */


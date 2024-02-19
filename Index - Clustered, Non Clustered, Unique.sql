create database index_db;

use index_db;

create table employee(
	id int,
	name varchar(50),
	salary decimal, 
	location varchar(50)
);

insert into employee values
(2, 'John', 40000, 'Pune'),
(1, 'Peter', 20000, 'Mumbai'),
(4, 'Steve', 500000, 'Delhi'),
(3, 'Smith', 10000, 'Banglore'),
(5, 'Jack', 30000, 'Hydrabad');

select * from employee;

drop table employee;

--creating index
create index idx_employee_salary
on employee(salary asc);

select * from employee where salary > 30000;


--Clustered index
create clustered index idx_employee_name
on employee (name asc);

sp_helpindex employee;

--Non Clustered index
create nonclustered index nid_employee_salary
on employee(salary desc);

--unique index 
create unique clustered index uci_employee_id
on employee(id asc);
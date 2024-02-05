use demodb;

create table Employees(
	emp_id int primary key,
	emp_name varchar(50), 
	gender varchar(50),
	salary int,
	city varchar(50),
	dept_id int
);

select * from Employees;

insert into Employees values(1, 'Alex', 'male', 1000, 'pune', 1);
insert into Employees values(2, 'Alen', 'male', 2000, 'mumbai', 2);
insert into Employees values(3, 'Aman', 'male', 3000, 'delhi', 4);
insert into Employees values(4, 'Anne', 'male', 4000, 'pune', 3);
insert into Employees values(5, 'John', 'male', 5000, 'mumbai', 2);
insert into Employees values(6, 'Sam', 'male', 6000, 'delhi', 1);
insert into Employees values(7, 'Peter', 'male', 7000, 'pune', 4);
insert into Employees values(8, 'Joe', 'male', 8000, 'mumbai', 2);
insert into Employees values(9, 'David', 'male', 9000, 'delhi', 1);


create table Mydepat(
	id int,
	dept_name varchar(50)
);

insert into Mydepat values(1, 'Accounts');
insert into Mydepat values(2, 'HR');
insert into Mydepat values(3, 'IT');
insert into Mydepat values(4, 'CS');

select * from Mydepat;

create view vw_forEmployees
as
select * from Employees as A
inner join Mydepat as B
on B.id = A.dept_id;

select * from vw_forEmployees;

create view vw_forEmployees1
as 
select A.*, B.dept_name from Employees as A
inner join Mydepat as B
on B.id = A.dept_id;

select * from vw_forEmployees1;

--column level security--
create view vw_forEmployees2
as 
select A.emp_id, A.emp_name, A.gender, A.city, A.dept_id, B.dept_name 
from Employees as A
inner join Mydepat as B
on B.id = A.dept_id;

select * from vw_forEmployees2;

--row level securty--
create view vw_forEmployees3
as 
select A.*, B.dept_name 
from Employees as A
inner join Mydepat as B
on B.id = A.dept_id
where dept_name = 'HR';

select * from vw_forEmployees3;

--show the query--
sp_helptext vw_forEmployees3;      

--alter the view--

alter view vw_forEmployees3
as 
select A.*, B.dept_name 
from Employees as A
inner join Mydepat as B
on B.id = A.dept_id
where dept_name = 'HR' or dept_name = 'Accounts';

--drop the view --
drop view vw_forEmployees3;

create view vw_forMyEmp
as
select * from Employees;

select * from vw_forMyEmp;

--insert, update, delete --
insert into vw_forMyEmp values(10, 'Maxwell', 'male', 10000, 'pune', 2);

update vw_forMyEmp set emp_name = 'Smith' where emp_id = 10;

delete from vw_forMyEmp where emp_id = 10;


create view vw_Empl
as
select emp_name, gender, salary from Employees;

select * from vw_Empl;

create view vw_Empl1
as 
select * from Employees where dept_id = 1;

select * from vw_Empl1;




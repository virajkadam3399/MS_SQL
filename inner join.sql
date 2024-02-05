use demodb;

create table Employee(
	emp_id int unique not null,
	emp_name varchar(50) not null,
	email varchar(50) not null,
	designation varchar(50) not null
);
select * from Employee;

insert into Employee values(1, 'john', 'john@gmail.com', 'Frontend Dev');
insert into Employee values(2, 'david', 'david@gmail.com', 'Backend Dev');
insert into Employee values(3, 'peter', 'peter@gmail.com', 'Devops Engg');
insert into Employee values(4, 'alex', 'alex@gmail.com', 'Flutter Dev');
insert into Employee values(5, 'Aman', 'aman@gmail.com', 'QA Dev');


create table Department(
	dept_id int unique not null,
	dept_name varchar(50) not null,
	dept_salary int not null,
	emp_id int unique not null
);
select * from Department;

insert into Department values(11, 'Computer Dept', 50000, 1);
insert into Department values(22, 'Account Dept', 60000, 3);
insert into Department values(33, 'CA Dept', 70000, 2);
insert into Department values(44, 'IT Dept', 80000, 4);
insert into Department values(55, 'IT Dept', 80000, 7);

--Inner Join--
select * from Employee as A 
inner join Department as B
on A.emp_id = B.emp_id;

select emp_name, designation, dept_name, dept_salary from Employee as A
inner join Department as B
on A.emp_id = B.emp_id;

--Left Join --
select emp_name, designation, dept_name, dept_salary from Employee as A
left join Department as B
on A.emp_id = B.emp_id;

--Right Join --
select emp_name, designation, dept_name, dept_salary from Employee as A
right join Department as B
on A.emp_id = B.emp_id;

-- Full Join--
select emp_name, designation, dept_name, dept_salary from Employee as A
full join Department as B
on A.emp_id = B.emp_id;


--Self Join--

create table EmpManager (
	employee_id int primary key,
	employee_name varchar(50) not null,
	manager_id int 
);

select * from EmpManager;
insert into EmpManager values(1, 'Ali', 3);
insert into EmpManager values(2, 'Aman', 2);
insert into EmpManager values(3, 'Alex', 4);
insert into EmpManager values(4, 'Alen', 2);
insert into EmpManager values(5, 'Anne', 1);

select * from EmpManager;

select A.employee_name as Employee, B.employee_name as Manager from EmpManager as A
inner join EmpManager as B
on A.manager_id = B.employee_id;


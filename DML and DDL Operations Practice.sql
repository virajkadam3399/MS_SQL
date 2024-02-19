create database employee_db;

use employee_db;

create table employee_info(
	empId int primary key,
	empName varchar(50) not null,
	empSalary decimal not null,
	job varchar(50),
	phone varchar(50),
	deptId int 
);

select * from employee_info;

insert into employee_info values(1, 'John', 10000, 'Jr Deve', 9430494375, 10)
insert into employee_info values(2, 'David', 20000, 'Jr Test', 94324905738, 11)
insert into employee_info values(3, 'Alex', 30000, 'Frontend','','');
insert into employee_info(empId, empName,empSalary) values(4, 'Smith', 40000);

--update
update employee_info set phone = 8837458937, deptId = 12 where empId = 3;
update employee_info set job = 'Backend', phone = 2937492037, deptId = 13 where empId = 4;
update employee_info set empSalary = empSalary +1000;

drop table employee_info;
truncate table employee_info;

--order by
select * from employee_info order by empSalary desc;
select empName from employee_info order by empName desc;

--where clause
select empName, job from employee_info where job = 'Frontend';
update employee_info set empSalary = empSalary + 5000 where deptId = 13;

select MAX(empSalary) from employee_info;

--Numeric functions
select abs(-10);
select CEILING(10.12);
select FLOOR(10.12);
select SIGN(20); select SIGN(-20) select SIGN(0);
select SQUARE(5);
select SQRT(81);

--String functions
select empName, LEN(empName) from employee_info;
select UPPER('hello');
select empName, UPPER(empName) as Uppercase_Name from employee_info;
select empName, LOWER(empName) as Lowercase_Name from employee_info;
select LTRIM('     anystring');
select RTRIM('       anystring');
select SUBSTRING('microsoft',1,5);
select REPLACE('microsoft','micro','birla');
select REPLICATE('hello ',5);
select REVERSE('hello');
SELECT TRIM('    hello    ');
select RIGHT('helloworld', 5);
select LEFT('helloworld', 5);
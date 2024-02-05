use demodb;

create table MyEmployees(
	emp_id int primary key,
	emp_name varchar(50),
	gender varchar(50),
	salary int,
	city varchar(50),
	dept_id int 
);

select * from MyEmployees;

insert into MyEmployees values (100, 'Alex', 'male', 100, 'pune', 1);
insert into MyEmployees values (200, 'Alen', 'female', 300, 'mumbai', 2);
insert into MyEmployees values (300, 'Aman', 'male', 500, 'delhi', 5);
insert into MyEmployees values (400, 'Anne', 'male', 200, 'pune', 3);
insert into MyEmployees values (500, 'John', 'female', 800, 'mumbai', 4);
insert into MyEmployees values (600, 'David', 'male', 400, 'delhi', 1);
insert into MyEmployees values (700, 'Peter', 'male', 900, 'pune', 2);
insert into MyEmployees values (800, 'Max', 'female', 1200, 'mumbai', 3);
insert into MyEmployees values (900, 'Joe', 'male', 4300, 'delhi', 5);
insert into MyEmployees values (1000, 'Martin', 'male', 2300, 'pune', 1);

select city, sum(salary) as [total salary according to city] from MyEmployees
group by city;

select gender, city, sum(salary) as [total salary according to city]  from MyEmployees
group by gender, city;
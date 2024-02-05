use demodb;

create table Employee_details(
	emp_id int primary key,
	emp_name varchar(50),
	gender varchar(50),
	salary int,
	city varchar(50),
);

select * from Employee_details;

insert into Employee_details values (100, 'Alex', 'male', 1000, 'pune');
insert into Employee_details values (200, 'Alen', 'female', 2000, 'mumbai');
insert into Employee_details values (300, 'Aman', 'male', 3000, 'delhi');
insert into Employee_details values (400, 'Anne', 'male', 4000, 'pune');
insert into Employee_details values (500, 'John', 'female', 5000, 'mumbai');
insert into Employee_details values (600, 'David', 'male', 6000, 'delhi');
insert into Employee_details values (700, 'Peter', 'male', 7000, 'pune');
insert into Employee_details values (800, 'Max', 'female', 8000, 'mumbai');
insert into Employee_details values (900, 'Joe', 'male', 9000, 'delhi');
insert into Employee_details values (1000, 'Martin', 'male', 10000, 'pune');

--having clause--
select city, sum(salary) from Employee_details
group by city
having city in ('pune');

--where clause--
select city, sum(salary) as total_salary from Employee_details
where city in ('pune')
group by city;


select city, sum(salary) as total_salary from Employee_details
group by city
having sum(salary) > 16000;

--where clause does not work with aggregate function--
select city, sum(salary) as total_salary from Employee_details
where sum(salary) >16000
group by city;

select city, sum(salary) as total_salary from Employee_details
where city in ('delhi', 'pune','mumbai')
group by city
having sum(salary) >=16000;

select city, sum(salary) as total_salary from Employee_details
where city not in ('delhi')
group by city;

select city, sum(salary) as total_salary from Employee_details
group by city
having city not in ('delhi');


select city, sum(salary) as total_salary from Employee_details
where city not in ('delhi')
group by city
having sum(salary) >=15000;
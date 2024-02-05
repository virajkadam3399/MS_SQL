use demodb;

select * from Employees;

select * from Employees where emp_id in 
(select emp_id from Employees where salary > 5000);


select * from Employees where emp_id in 
(select emp_id from Employees where city = 'pune')


update Employees set salary = salary+2000
where emp_id in 
(select emp_id from Employees where city = 'pune');

delete from Employees where emp_id in 
(select emp_id from Employees where city = 'delhi');

--sub query using two tables--
select * from Mydepat;

select * from Employees where dept_id in 
(select id from Mydepat where dept_name = 'IT');


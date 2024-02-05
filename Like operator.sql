use demodb;

select * from Employee_details;

select * from Employee_details where emp_name like 'a%';
select * from Employee_details where emp_name like '%x';
select * from Employee_details where emp_name like '%oh%';
select * from Employee_details where emp_name like 'a___';
select * from Employee_details where emp_name like '___n';
select * from Employee_details where emp_name like '[j,p,d]%';
select * from Employee_details where emp_name like '_m%';
select * from Employee_details where emp_name like 'd%d';



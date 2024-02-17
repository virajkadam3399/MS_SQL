use demodb;

select * from Employees;

use employee_db;

select * into Emp_details from demodb.dbo.Employees;

select * from Emp_details;


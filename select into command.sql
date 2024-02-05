use demodb;

select * from Employee_details;

select * into Emp_backup from Employee_details;

select * from Emp_backup;

drop table Emp_backup;

select emp_id, emp_name, salary into Emp_backup from Employee_details;

select * into Emp_backup from Employee_details where city = 'pune';

select * from Mydepat;
select * from Employees;

select * into Emp_backup from Employees as A 
inner join Mydepat as B
on B.id = A.dept_id;

select A.*, B.dept_name into Emp_backup from Employees as A
inner join Mydepat as B
on B.id = A.dept_id;


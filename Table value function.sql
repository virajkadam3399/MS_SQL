use demodb;

select * from Employee_details;

--create a function to get employee inforamtion by passing employee salary --

create function Getallemployees (@sal int)
returns table

return 
	select * from Employee_details where salary = @sal

select * from Getallemployees(9000);


create function getEmployees (@sal int)
returns table

return
	select * from Employee_details where salary = @sal

select * from getEmployees(5000);


create function getEmployeewithsalary (@sal int)
returns table

return 
	select * from Employee_details where salary >= @sal

select * from getEmployeewithsalary(7000);


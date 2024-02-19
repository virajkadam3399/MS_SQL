use employee_db;

select * from Emp_details;

--If statement
begin
	declare @salary int
	select @salary = AVG(salary) from Emp_details;
	select @salary as 'Avg Salary';

	if @salary > 5000
		begin
			print 'Avg salary is greater than 5000';
		end
end

--If Else Statement
begin
	declare @salary int
	select @salary = AVG(salary) from Emp_details;
	select @salary as 'Avg Salary'

	if @salary > 5000
		begin
			print 'Avg salary is greater than 5000';
		end
	else
		begin
			print 'Avg salary is less than 5000';
		end
end
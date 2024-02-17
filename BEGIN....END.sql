use employee_db;

select * from employee_info;

begin
	declare @name varchar(50), @salary int, @job varchar(50), @deptId varchar(50) = 11;
	select @name = empName, @salary = empSalary, @job = job, @deptId = deptId from employee_info
	where deptId = @deptId;
	select @name as 'Name', @salary as 'Salary', @job as 'Job';

end

--Nesting BEGIN...END
begin
	declare @name varchar(50), @salary int, @job varchar(50), @deptId varchar(50) = 10;
	select @name = empName, @salary = empSalary, @job = job, @deptId = deptId from employee_info
	where deptId = @deptId;
	select @name as 'Name', @salary as 'Salary', @job as 'Job';

	begin
		print 'department Id :' + @deptId;
	end
end


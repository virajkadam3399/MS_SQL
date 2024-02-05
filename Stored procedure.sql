use demodb;

select * from Employee_details;

create procedure spGetemployee
as
begin
	select emp_name, gender from Employee_details;
end

execute spGetemployee;

create procedure spGetemployee1
as
begin
	select * from Employee_details;
end

execute spGetemployee1;

--stored procedure with single parameter--
create procedure spGetemployee2
@emp_id int
as
begin
	select * from Employee_details where emp_id = @emp_id
end

execute spGetemployee2 200;


--stored procedure with multiple parameter--
create procedure spGetemployee3
@emp_name varchar(50), @gender varchar(50)
as
begin
	select * from Employee_details where emp_name = @emp_name and gender = @gender
end

execute spGetemployee3 david, male;

--alter with stored procedure--
alter procedure spGetemployee3
@emp_name varchar(50), @gender varchar(50)
as
begin
	select salary, city from Employee_details where emp_name = @emp_name and gender = @gender
end

execute spGetemployee3 david, male;

sp_helptext spGetemployee3;


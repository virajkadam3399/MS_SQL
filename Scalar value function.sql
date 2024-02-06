use demodb;

--create a function to get employee salary by passing employee name--

select * from Employee_details;

create function salary(@name as varchar(50))
returns decimal
begin
	declare @sal decimal;
	select @sal = salary from Employee_details where emp_name = @name
	return @sal
end

select dbo.salary('Martin');


create function GetSalary(@epmName as varchar(50))
returns int
begin
	
	declare @sal int;
	select @sal = salary from Employee_details where emp_name = @epmName
	return @sal
end

select dbo.GetSalary ('Joe');


--find the square of 7 --
create function Getsinglevalue(@num as int)
returns int

begin
	return (@num * @num)
end

select dbo.Getsinglevalue(7);


--return single string --
create function Showmessage()
returns varchar(100)

begin
	return 'welcome to function'
end

select dbo.Showmessage();

create function Checkvoterage (@age as int)
returns varchar(50)

begin 
	declare @str varchar(100)
	if(@age >=18)
	begin 
		set @str = 'you are eligible to vote'
	end
	else
	begin
		set @str = 'you are not eligible to vote'
	end

	return @str
end

select dbo.Checkvoterage(15);
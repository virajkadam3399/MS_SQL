use demodb;

select * from Employee_details;

create function getEmployeesbygender (@gender varchar(50))
returns @mytable table (id int, name varchar(50), gender varchar(50), salary int )

begin 
	insert into @mytable
	select emp_id, emp_name, gender, salary from Employee_details where gender = @gender

	return

end

select * from getEmployeesbygender('male');

create function getempbygender (@gender varchar(50))
returns @mytbl table (name varchar(50), gender varchar(50), salary int)

begin
	insert into @mytbl
	select emp_name, gender, salary from Employee_details where gender = @gender

	return
end

select * from dbo.getempbygender('female');

--same task using inline table value function --
create function getEmploByGender (@gender varchar(50))

returns table

return

	select emp_name, gender, salary from Employee_details where gender = @gender

select * from getEmploByGender('male');
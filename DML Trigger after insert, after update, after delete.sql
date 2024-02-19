use demodb;

select * from Employee;

create table EmployeeLogs(
	id int, name varchar(50), email varchar(50), designation varchar(50), modifiedBy varchar(50), modifiedOn date
)

select * from EmployeeLogs;

create trigger tr_emp_after_insert
on Employee
after insert
as 
	begin
		insert into EmployeeLogs
		select emp_id, emp_name, email, designation, 'Smith', getdate() from inserted
	end

insert into Employee values(7, 'Martin', 'martin@gmail.com', 'SQL Dev');

create trigger tr_emp_after_update
on Employee
after update
as
	begin
		insert into EmployeeLogs
		select emp_id, emp_name, email, designation, 'Smith', getdate() from inserted;
	end

update Employee set designation = 'DBA' where emp_name = 'Martin';

create trigger tr_emp_after_delete
on Employee
after delete
as
	begin 
		insert into EmployeeLogs
		select emp_id, emp_name, email, designation, 'Smith', getdate() from deleted;
	end

delete from Employee where emp_name = 'Martin';


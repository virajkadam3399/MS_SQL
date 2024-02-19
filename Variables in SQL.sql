use employee_db;

declare @name varchar(50);
set @name = 'John';
select @name as Name;

declare @name varchar(50);
select @name = 'David';
select @name as Name;

declare @name varchar(50), @age int;
set @name = 'Peter', @age = 20;
select @name, @age;

declare @name varchar(50), @age int;
select @name = 'Peter', @age = 20;
select @name, @age;

declare @number int = 100;
set @number+=50;
select @number;

declare @number int = 100;
set @number = @number-50;
select @number;

declare @number int = 100;
set @number *=50;
select @number;

select * from Emp_details;
declare @name varchar(50), @gender varchar(50), @salary varchar(50), @city varchar(50)
select @name = emp_name, @gender = gender, @salary = salary, @city = city from Emp_details;
select @name, @gender, @salary, @city;


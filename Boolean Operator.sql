use employee_db;

create table user_login(
	id int primary key identity,
	username varchar(50) not null unique,
	email varchar(50) not null unique,
	password varchar(50) not null
);

insert into user_login(username, email, password) values
('John', 'john@gmail.com', 'john@123'),
('David', 'david@gmail.com', 'david@123'),
('Smith', 'smith@gmail.com', 'smith@123');

select * from user_login;

--AND
select username from user_login where email = 'david@gmail.com' and password = 'david@123';
select * from user_login where email = 'smith@gmail.com' and password = 'smith@123';

--OR
select password from user_login where username = 'John' or email = 'john@gmail.com';
select * from user_login where username = 'John' or email = 'john123@gmail.com';

--NOT
select * from user_login where username != 'Smith';
select * from user_login where not username = 'Smith';
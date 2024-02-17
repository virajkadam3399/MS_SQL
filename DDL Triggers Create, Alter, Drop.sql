create database trigger_db;

use trigger_db;

--create table:
create trigger tr_ddl_table_create
on database 
for create_table
as

	begin
		print 'new table created';
	end

create table Test_tbl(id int);

--alter table:
create trigger tr_ddl_table_alter
on database
for alter_table
as
	begin
		print 'You have just altered a table';
	end

alter table Test_tbl add Name varchar(50);

select * from Test_tbl;

--drop table:
create trigger tr_ddl_table_drop
on database
for drop_table
as
	begin
		print 'You have just dropped a table';
	end

drop table Test_tbl;

drop trigger tr_ddl_table_drop on database;
drop trigger tr_ddl_table_alter on database;
drop trigger tr_ddl_table_create on database;


--create, alter, drop table :
create trigger tr_ddl_table
on database
for create_table, alter_table, drop_table
as
	begin
		print 'You have just created, alter and drop table';
	end

create table Test_tbl(id int);
alter table Test_tbl add Name varchar(50);
drop table Test_tbl;

drop trigger tr_ddl_table on database;


--create stored procedure :
create trigger tr_ddl_sp_create
on database
for create_procedure
as
	begin 
		rollback
		print 'You are not allowed to create stored procedure';
	end

create procedure sp_Myprocedure
as
begin
	print 'This is my stored procedure';
end


--Rename table or table column :

create trigger tr_ddl_rename
on database
for rename
as
	begin 
		print 'You have just rename a table or table column';
	end

sp_rename 'Test_tbl', 'Test_tbl1';


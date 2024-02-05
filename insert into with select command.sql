use demodb;

create table StudentPune (
	stu_id int identity,
	stu_name varchar(50),
	stu_age int,
	stu_city varchar(50)
);

select * from StudentPune;

insert into StudentPune values('John', 10, 'Koregaon Park');
insert into StudentPune values('David', 11, 'Kotharud');


create table StudentMum(
	stu_name varchar(50),
	stu_age int,
	stu_city varchar(50)
);

select * from StudentMum;

insert into StudentMum values('Alex', 12, 'Panvel');
insert into StudentMum values('Alen', 13, 'Thane');
insert into StudentMum values('Peter', 14, 'CSMT');
insert into StudentMum values('Maxwell', 15, 'Dadar');



insert into StudentPune select * from StudentMum;





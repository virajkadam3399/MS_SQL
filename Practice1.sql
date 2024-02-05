use demodb;

create table Student_Bio_Data (STDID Int, STD_NAME varchar(50), FATHER_NAME varchar(50), ROLL_NO int, CLASS varchar(50)); 

select * from Student_Bio_Data;

insert into Student_Bio_Data values(1, 'John','Doe', 10, '10th');
insert into Student_Bio_Data values(2, 'David','Doe', 11, '11th');
insert into Student_Bio_Data values(3, 'Alex','Doe', 12, '12th');
insert into Student_Bio_Data values(4, 'Peter','Doe', 13, '13th');

update Student_Bio_Data set ROLL_NO = 14 where STDID = 2;
update Student_Bio_Data set STD_NAME = 'Maxwell' where STDID = 3;

delete from Student_Bio_Data where STDID = 3;

truncate table Student_Bio_Data;
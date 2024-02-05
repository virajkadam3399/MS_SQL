use demodb;

create table VoterTbl 
(
	voter_id int ,
	voter_name varchar(50),
	voter_age int
);

select * from VoterTbl;

/* alter using not null */
alter table VoterTbl alter column voter_name varchar(50) not null;
insert into VoterTbl(voter_id, voter_age) values (1, 20);
alter table VoterTbl alter column voter_name varchar(50) null;
delete from VoterTbl where voter_id = 1; 

/* unique */
alter table VoterTbl add unique (voter_id);
insert into VoterTbl values(1, 'John', 11);
insert into VoterTbl values(1, 'David',22);
 
alter table VoterTbl drop constraint UQ__VoterTbl__B7950312101B2F76;

/* Primary Key */
alter table VoterTbl add primary key (voter_id);
alter table VoterTbl alter column voter_id int not null;
alter table VoterTbl drop constraint [PK__VoterTbl__B795031344429E76];

/* Foreign key */
create table Votercity
(
	c_id int,
	c_name varchar(50),
	voter_id int
);
select * from VoterTbl;
select * from Votercity;

alter table Votercity add foreign key (voter_id) references VoterTbl (voter_id);
alter table Votercity drop constraint FK__Votercity__voter__4D94879B;


/* Check */
alter table VoterTbl add check(voter_age >=18);
ALTER TABLE VoterTbl ADD CHECK (voter_age >= 18);

/* default */
alter table VoterTbl add default 18 for voter_age;
insert into VoterTbl(voter_id, voter_name) values(2, 'david');
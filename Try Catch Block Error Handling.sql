use employee_db;

begin try
	select 100/5 as 'Division';
end try

begin catch
	select ERROR_MESSAGE() as 'Error Message';
end catch



begin try
	select 100/0 as 'Division'
end try

begin catch
	select ERROR_MESSAGE() as 'Error Message', ERROR_LINE() as 'Error Line', ERROR_NUMBER() as 'Error Number';
end catch


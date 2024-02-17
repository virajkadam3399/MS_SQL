select GETDATE() as Today_date;

select SYSDATETIME() as Today_date;

select CURRENT_TIMESTAMP as Today_date;

select DATENAME(MONTH,CURRENT_TIMESTAMP) as 'Month';
select DATENAME(YEAR, CURRENT_TIMESTAMP) as 'Year';
select DATENAME(HOUR, CURRENT_TIMESTAMP) as 'Hour';

select DATEDIFF(YEAR, 'AUGUST 20 1997', CURRENT_TIMESTAMP) as AgeinYears;
select DATEDIFF(MONTH, 'august 20 1997', CURRENT_TIMESTAMP) as AgeinMonth;
select DATEDIFF(YEAR, 'january 1 2000', 'february 14 2024') as AgeinYears; 

select DATEADD(YEAR, 100, CURRENT_TIMESTAMP) as '100YearsFromNow';
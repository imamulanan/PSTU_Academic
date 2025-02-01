create database exer_8;
use exer_8;

create table if not exists job_history(
     employee_id int not null,
     start_date date not null,
     end_date date not null
     check(end_date like '--/--/----'),
     job_id int primary key not null,
     department_id int  not null 
);

select * from job_history;
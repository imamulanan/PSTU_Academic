create database exer_10;
use exer_10;

create table if not exists jobs(
   job_id  int primary key not null,
   job_title varchar(30) not null default ' ',
   MIN_Salary int default 8000,
   Max_Salary int default null
);

select * from jobs;



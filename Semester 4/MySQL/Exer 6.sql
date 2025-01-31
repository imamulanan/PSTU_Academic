create database exer_6;
use exer_6;

create table if not exists jobs(
   job_id  int primary key not null,
   job_title varchar(30) not null,
   MIN_Salary varchar(10) not null,
   Max_Salary varchar(10) not null,
   check(Max_Salary<=25000)
);
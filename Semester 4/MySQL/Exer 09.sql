create database exer_9;
use exer_9;

create table if not exists countries(
  country_id int primary key,
  country_name varchar(40)
       check(country_name in('Italy','India','China')),
  
  REGION_ID int,
  unique(country_id)
);

select * from countries;
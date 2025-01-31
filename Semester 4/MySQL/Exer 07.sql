create database exer_7;
use exer_7;

create table if not exists countries(
  country_id int primary key,
  country_name varchar(40)
       check(country_name in('Italy','India','China')),
  
  REGION_ID int
);

select * from countries;
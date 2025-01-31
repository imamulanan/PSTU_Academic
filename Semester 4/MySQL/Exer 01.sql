create database exc_1_2;
use exc_1_2;

create table if not exists countries (
     country_id int primary key,
     country_name varchar(30),
     region_id varchar(10)
);

create table if not exists dup_countries(
like countries);

select * from countries;
select * from dup_countries
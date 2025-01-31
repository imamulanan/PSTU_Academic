create database exc_5;
use exc_5;

create table if not exists countries (
     country_id int primary key not null,
     country_name varchar(30) not null,
     region_id varchar(10) not null
);

select * from countries;

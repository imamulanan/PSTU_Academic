create database exer_12;
use exer_12;

create table if not exists countries(
    country_id int not null unique auto_increment primary key,
    country_name varchar(40) not null,
    Region_id decimal(10,0) not null
);

desc countries;
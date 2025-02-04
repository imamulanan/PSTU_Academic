create database exer_13;
use exer_13;

create table if not exists countries(
    country_id varchar(2) not null unique default '',
    country_name varchar(40) not null,
    Region_id decimal(10,0) not null,
    
    primary key(country_id,Region_id)
);

desc countries;
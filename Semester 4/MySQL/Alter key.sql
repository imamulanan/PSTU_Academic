create database school_3;
use school_3;

create table student (
        roll_no int primary key,
        name varchar(50),
        marks int not null,
        grade varchar(1),
        city varchar(20)
 );
 
 insert into student (roll_no, name, marks, grade, city) 
 values 
 (101,"Anan",78,"C","PTK"), (102,"Miad",68,"D","DHK"),
 (103,"Miraj",58,"E","DHK"), (104,"Kabir",88,"B","PTK"),
 (105,"Niloy",98,"A","UTTA"),(106,"Tamim",73,"C","PTK"),
 (107,"Ramim",92,"A","CHT"),(108,"Suham",82,"B","RAJ"),
(109,"Mehraj",48,"F","Feni"),(110,"Masum",42,"F","Cumilla");

alter table student
add column age int not null default 19;

alter table student
modify column age varchar(2);

alter table student
change age stu_age int;

alter table student
change column name full_name varchar(50);

set sql_safe_updates = 0;

delete from student 
where marks <50;

select * from student;
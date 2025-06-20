create database school_4;
use school_4;

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


select * from student;

select avg(marks)
from student;

select name , marks from student
where marks>72.7000;

select name , marks from student
where marks>(select avg(marks)
from student);

select name, roll_no from student 
where roll_no in (select roll_no from 
student where roll_no % 2=0);

select * 
from student where city = "PTK";

select max(marks) from (select * 
from student where city = "PTK") as temp;

select max(marks) from student where city = "PTK";

create view view1 as select roll_no, name, marks from
student; 

select * from view1;

select * from view1
where marks>80;
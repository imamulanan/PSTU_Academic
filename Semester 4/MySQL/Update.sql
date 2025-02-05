create database school_2;
use school_2;

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

set sql_safe_updates = 0;

update student set grade = "O"
where grade = "A";

update student set marks = 85
where roll_no = 109;

update student set grade = "B"
where marks between 80 and 90;

update student set marks = marks+1;

delete from student where marks <50;

select * from student;
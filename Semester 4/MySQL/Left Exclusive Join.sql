create database Left_Exclusive_Join;
use Left_Exclusive_Join;

create table student (
        roll_no int primary key,
        name varchar(50)
 );
 
 insert into student values (101,"Anan"),(102,"Miad"),
 (103,"Miraj");
 
 create table course (
        roll_no int primary key,
        course varchar(50)
 );
 
insert into course values (102,"CIT"),(105,"MAT"),
 (103,"CCE"),(107,"EEE"); 
 

select * from student as s
left join course as c
on s.roll_no = c.roll_no
where c.roll_no is null; 
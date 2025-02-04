create database Full_Join;
use Full_Join;

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
 
 
select * from student left join course 
on student.roll_no = course.roll_no
union
select * from student right join course 
on student.roll_no = course.roll_no; 



select * from student as s
left join course as c
on s.roll_no = c.roll_no
union
select * from student as s
right join course as c
on s.roll_no = c.roll_no; 
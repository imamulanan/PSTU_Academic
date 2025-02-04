create database Foreign_Key;
use Foreign_Key;

create table  dept(
        id int primary key,
        name varchar(50)
 );

insert into dept values 
(101,"CIT"),
(102,"IT"),
(103,"CCE");

select * from dept;


update dept set id = 105 
where id = 102;

create table teacher(
         id int primary key,
        name varchar(50),
        dept_id int,
        foreign key (dept_id)references dept(id)
        on update cascade
        on delete cascade
); 


insert into teacher values 
(101,"Anan",101),
(102,"Miad",102),
(103,"Miraj",103);

select * from teacher;
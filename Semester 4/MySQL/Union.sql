create database set_UNION;
use set_UNION;

create table coustomer(
      coustomer_id int primary key,
      coustomer_name varchar(50)
);

insert into coustomer values(1,"Anan"),(2,"Miad");

create table supplier(
      supplier_id int primary key,
      supplier_name varchar(50)
);

insert into supplier values(101,"supplierA"),
(102,"supplierB");

select coustomer_name from coustomer
union
select supplier_name from supplier;

create database aug7;
use aug7;
create table employees(emp_id int,Name varchar(20),dep_id varchar(20));
insert into employees(emp_id,Name,dep_id)values
(101,"Anushka Sharma",27),
(102,"Katrina Kaif",28),
(103,"Kiara Advani",29),
(104,"Aishwarya Rai",30),
(105,"Priyanka Chopra",31);
create table departments(dep_id varchar(10) primary key,dept_name varchar(20));
insert into departments(dep_id,dept_name)values
(27,"CEO"),
(28,"Manager"),
(29,"HR"),
(30,"Developer"),
(31,"Hacker"),
(32,"Office Administrator");
select e.Name,d.dept_name from employees e 
right join departments d on
e.dep_id=d.dep_id;
select d.dept_name as Departments,e.name as Employees
from departments d
left join employees e on
d.dep_id=e.dep_id;
select d.dept_name as Departments,e.emp_id as Id,e.name as Name 
from departments d
left join employees e on
d.dep_id=e.dep_id;
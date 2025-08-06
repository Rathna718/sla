create database task;
use task;
create table empt(id int,
empName varchar(20),dep_id varchar(20));
insert into empt(id,empName,dep_id)values
(1,"Mahi",007),
(2,"Virat",018),
(3,"Rohit",045),
(4,"Hardik",033),
(5,"Bumrah",093);
create table empt1(dep_id int,DeptName varchar(29));
insert into empt1(dep_id,DeptName)values
(007,"CEO"),
(018,"HR"),
(045,"HR"),
(033,"Hacker"),
(093,"Developer");
select * from empt;
select * from empt1;
select empt.empName,empt1.DeptName from empt
inner join
empt1 on
empt.dep_id=empt1.dep_id;
select empt1.DeptName,empt.empName from empt
inner join 
empt1 on
empt.dep_id=empt1.dep_id;
select empt1.DeptName,count(empt.empName) as No_of_Emp from empt
inner join 
empt1 on
empt.dep_id=empt1.dep_id
group by empt1.DeptName;
select * from empt
inner join
empt1 on
empt.dep_id=empt1.dep_id
where DeptName="HR";
select empt.empName,empt.dep_id,empt1.DeptName
from empt inner join empt1 on
empt.dep_id=empt1.dep_id;
select empt.empName,empt1.DeptName from empt
inner join empt1 on
empt.dep_id=empt1.dep_id 
order by DeptName asc;

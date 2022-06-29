create database employee_payroll_service;
use employee_payroll_service;
show databases;
select database();
show tables;
create table employee(id int primary key auto_increment,name varchar(20),department varchar(20));
describe employee;
insert into employee(name,department) values('vikash','Operations'),('raj','PowerBI'),('raju','PLSQL');

select *from employee;

update employee set salary=30000 where id=1;

select name,department from employee;

drop table employee;

alter table employee add salary long after name;

alter table employee modify name varchar(40);

select count(*) from employee;

select sum(salary) as sum from employee;

select avg(salary) as average from employee;

select min(salary) from employee;

select max(salary) from employee;

select distinct salary from employee;

select *from employee limit 2;

select *from employee order by salary desc;

select *from employee where name like '%e%' or salary = 30000;

select *from employee where name IN ('Kiran','raja');

select *from employee where salary between 10000 and 25000;

alter table employee add joining_date date;

update employee set joining_date='2022-05-23';

create table payroll (pay_id int primary key auto_increment,
 emp_id int, designation varchar(40),
 foreign key (emp_id) references employee(id));
 
 desc payroll;
 
 insert into payroll(emp_id,designation) values(6,'Manager'),(6,'Admin'),(1,'Developer'),(1,'DevOps'),(3,'Manager'),(4,'Director');

select *from payroll;

select name,department,salary,designation from payroll
 cross join employee ON employee.id=payroll.emp_id;

update employee set joining_date='2022-05-24';

select *from employee;
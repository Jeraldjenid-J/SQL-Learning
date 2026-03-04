-- Table Creation and Data Filtering

CREATE TABLE employee(
employee_Id int primary key,
Name varchar(30),
Job_desc varchar(20),
Salary int);

insert into employee(employee_Id,Name,Job_desc,Salary) values(1,'Jerald','Admin',75000);
insert into employee(employee_Id,Name,Job_desc,Salary) values(2,'Boopathi','Manager',70000);
insert into employee(employee_Id,Name,Job_desc,Salary) values(3,'Saba','Manager',65000);
insert into employee(employee_Id,Name,Job_desc,Salary) values(4,'Vallarasu','Sales',25000);
insert into employee(employee_Id,Name,Job_desc,Salary) values(5,'Malavika','HR',35000);
insert into employee(employee_Id,Name,Job_desc,Salary) values(6,'Sara','CEO',75000);
insert into employee(employee_Id,Name,Job_desc,Salary) values(7,'Jayasri','Sales',30000);
insert into employee(employee_Id,Name,Job_desc,Salary) values(8,'Juno','Accounts',50000);
insert into employee(employee_Id,Name,Job_desc,Salary) values(9,'Deppak','Engineer',65000);
insert into employee(employee_Id,Name,Job_desc,Salary) values(10,'Vishnu','Sales',25000);
insert into employee(employee_Id,Name,Job_desc,Salary) values(11,'Vanitha','PA',70000);

insert into employee values (12,'Jerald','Sales',25000);

--WHERE
  
select * from employee
where Name='Vanitha';

select * from employee
where employee_id=1

select * from employee
where name='Jerald';

--Comparison Operators
  
select * from employee
-- where name != 'Jerald';
where name <> 'Jerald';

select * from employee
where salary >=20000;

select * from employee
where salary < 50000;

--Logical Operators (AND & OR)
  
select * from employee
where salary <=25000 and salary>=75000;

select * from employee
where salary <=20000 or salary>55000

select employee_id,name from employee
where name='Vanitha' or name='Jerald';

select name, job_desc from employee
where name = 'sara';

select * from employee
where salary<76000 and job_desc='CEO';

select * from employee
where job_desc="sales" or job_desc="Manager";
------------- or
select * from employee
where job_desc in ("Sales","Manager");

--NOT IN
  
select * from employee
where job_desc not in ("Admin","Ceo");
  

--Range Filtering using BETWEEN

select * from employee
where salary between 25000 and 65000
  

--Result Limiting using LIMIT
  
select * from employee
limit 6;

--Pattern Matching with Wildcards (LIKE)

select * from employee
where name like "J%";

select * from employee 
where name like "%a" ;

select * from employee 
where salary like "2%"

select * from employee 
where name like "_a%";

select * from employee
where name like "%ar%";

select * from employee
where name like "%an%";

select * from employee
where name like "s%_r%";

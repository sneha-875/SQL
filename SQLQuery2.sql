------------- SQL JOINS -----------------

CREATE TABLE employees2 (

emp_id INT PRIMARY KEY,
emp_name VARCHAR(50),
emp_dept_id INT

);

CREATE TABLE department (
  dept_id INT PRIMARY KEY,
  dept_name VARCHAR(50)
);

Insert into employees2 VALUES
(1,'John Doe',1),
(2,'Jane Smith',1),
(3,'Michael Johnson',2),
(4,'Emily Brown',2),
(5,'Cris Lee',3)

Insert into employees2 VALUES
(6, 'LEE', 6);

Insert into department(dept_id, dept_name) VALUES
(1,'HR'),
(2,'Finance'),
(3,'Marketing'),
(4,'IT')


Select * from employees2
Select * from department

--------- INNER JOIN-----------

select * from employees2 inner join department on
employees2.emp_dept_id= department.dept_id

-----------LEFT JOIN-----------

select * from employees2 left join department on
employees2.emp_dept_id= department.dept_id

--------LEFT OUTER JOIN------------

------in case of sql left join and left outer join are same in pyspark there is difference

select * from employees2 left outer join department on
employees2.emp_dept_id= department.dept_id

------RIGHT JOIN---------

select * from employees2 right join department on
employees2.emp_dept_id= department.dept_id

-----RIGHT OUTER JOIN--------

select * from employees2 right outer join department on
employees2.emp_dept_id= department.dept_id

-----FULL OUTER JOIN----------

select * from employees2 full outer join department on
employees2.emp_dept_id= department.dept_id

-----------------------------------------------------------------------















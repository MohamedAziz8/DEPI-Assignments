--Write a SQL query to retrieve all columns from a table named employees. 

select * from employees



--Write a SQL query to retrieve the emp_id, emp_name, and dept_id from the employees table

select employee_id,first_name,department_id 
from employees 



--Write a SQL query that displays distinct dept_id values from the employees table. 

select distinct department_id
from employees




--Write a SQL query to create a table students with the following columns: ID 
--(Primary Key), First_Name (not null), Last_Name (default 'Unknown'), 
--Address (default 'N/A'), City (default 'N/A'), and Birth_Date. 

create table students
(
ID varchar(10) primary key,
First_Name varchar(20) not null,
Last_Name varchar(20) not null default('Unknown'),
Address varchar(20) default('N/A'),
city varchar(10) default('N/A'),
Birth_Date date
);




--Write a SQL query to insert the following values into the students table: 
--('Ahmed', 'Ali', 'Downtown', 'Cairo', '1995-01-01'). 

insert into students values(1427,'Ali' , 'Ahmed' , 'Downtown' , 'Cairo' , '1995/01/01')




--Write a SQL query to update the Address of the student with Last_Name = 
--'Ahmed' to 'Garden City'.

update students 
set Address = ('Cairo') 
where Last_Name = 'Ali'




--Write a SQL query to delete the rows from the students table where City is 
--'Cairo', and then rollback the transaction.

begin TRANSACTION;
DELETE FROM students
WHERE City = 'Cairo';

ROLLBACK;

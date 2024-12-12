--Write a SQL query to retrieve the emp_id , last_name , and salary of employees whose salary is
--between 2,000 and 5,000 and do not have a manager ID of 101 or 200.

select employee_id , last_name , Salary 
from employees 
WHERE salary between 2000 and 5000 and manager_id not in (101 ,200)




--Write a SQL query to display the employee names along with their respective department names.
--Use aliases for table names for better readabilit

select e.first_name , e.last_name ,d.department_name
from employees e, departments d
where d.department_id = e.department_id




--Write a SQL query to find the number of employees and the average salary for each department.
--Ensure that the results are grouped by department ID.

SELECT department_id, COUNT(*) AS num_employees, AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id;
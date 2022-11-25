
Questions
-------------------
/*
1. Write a query in SQL to display the first name, last name, dpeartment number, and department name for each employee.
2. Write a query in SQL to display the first and last name, department city and state province for each employee.
3. Write a query in SQL to display first name, last name, salary, and job grade for all employees
4. Write a query in SQL to display first name, last name, department number and department name, for all employees for department 80 or 40.
5. Write a query in SQL to display those employees who contain a letter z to their first name and also display their last name, department, city and state province
6. Write a query in SQL to display all departments including those where does not have any employee
7. Write a query in SQL to display the first and last name and salary for those employees who earn less than the employee earn  
*/




1.
select e.first_name, e.last_name , e.department_id , d.department_name
from employees e ,departments d
where e.department_id = d.department_id



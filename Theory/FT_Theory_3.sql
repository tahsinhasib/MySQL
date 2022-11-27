-- DATABSE _ Joining Theory FT
-- Md. Tahsin Hasib   22-46026-1
----------------------------------

*** Equijoin
---------------
1. Display employees first name, department number and department name 

SELECT E.FIRST_NAME,
       E.DEPARTMENT_ID,
       D.DEPARTMENT_NAME
FROM EMPLOYEES E, DEPARTMENTS D
WHERE E.DEPARTMENT_ID = D.DEPARTMENT_ID


---------------------------------------------------------------
*** Non Equijoin



SELECT E.FIRST_NAME,
       E.DEPARTMENT_ID,
       D.DEPARTMENT_NAME
FROM EMPLOYEES E, DEPARTMENTS D
WHERE E.DEPARTMENT_ID =  D.DEPARTMENT_ID (+)


-----------------------------------------------------------------------------
3. Display employees first name and their managers first name

SELECT *
FROM EMPLOYEES


SELECT WORKER.FIRST_NAME,
       MANAGER.FIRST_NAME
FROM EMPLOYEES WORKER, EMPLOYEES MANAGER
WHERE WORKER.MANAGER_ID = MANAGER.EMPLOYEE_ID

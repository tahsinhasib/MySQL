-- Employees table
-- when we use create or replace we can use the same view name for updated table
-- viewname(col_1, col_2) can also be replaced by using column aliasing

/*  use of VIEW (Logically represents subsets of data from one or more tables)

    --------------------------------------------
    To restrict database access
    To make complex queries easy
    To allow data independence
    To present different views of the same data

    * You can perform DML operations on simple views. 
    * You cannot remove a row if the view contains the following:
    -> Group functions
    -> A GROUP BY clause
    -> The DISTINCT keyword

    * You cannot modify data in a view if it contains:
    -> Prev conditions
    -> Columns defined by expressions
    -> The ROWNUM pseudocolumn
    
    * You cannot add data if:
    -> The view contains any of the conditions mentioned above or in the previous slide
    -> There are NOT NULL columns in the base tables that are not selected by the view

    * You can ensure that no DML operations occur by adding the 
    WITH READ ONLY option to your view definition.
*/


-- 1. Create a view display employees name, dept id, dept name
CREATE OR REPLACE VIEW view1
AS
SELECT E.FIRST_NAME,
        E.DEPARTMENT_ID,
        D.DEPARTMENT_NAME 
FROM EMPLOYEES E,DEPARTMENTS D 
WHERE E.DEPARTMENT_ID=D.DEPARTMENT_ID


SELECT *
FROM view1


-- 2. Create a view to display the employees and their manager name

-- view() method
CREATE OR REPLACE VIEW view2 (EMPLOYEE_NAME, MANAGER_NAME)
AS
SELECT WORKER.FIRST_NAME,
        MANAGER.FIRST_NAME 
FROM EMPLOYEES WORKER, EMPLOYEES MANAGER 
WHERE WORKER.MANAGER_ID = MANAGER.EMPLOYEE_ID


-- column alliasing method
CREATE OR REPLACE VIEW view2
AS
SELECT WORKER.FIRST_NAME,
        MANAGER.FIRST_NAME AS MANAGER_NAME
FROM EMPLOYEES WORKER, EMPLOYEES MANAGER 
WHERE WORKER.MANAGER_ID = MANAGER.EMPLOYEE_ID


SELECT *
FROM view2

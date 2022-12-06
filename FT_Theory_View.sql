-- View table

/*
    In SQL, a view is a virtual table based on the result-set of an SQL statement.
    A view contains rows and columns, just like a real table. The fields in a view 
    are fields from one or more real tables in the database.
*/


CREATE TABLE EMP (
    E_ID VARCHAR2 (10) CONSTRAINT E_ID_EMP_PK PRIMARY KEY,
    E_NAME VARCHAR2 (20),
    E_SALARY FLOAT
);


SELECT *
FROM EMP

DESC EMP

INSERT INTO EMP VALUES ('1', 'TAHSIN', 4500.00)
INSERT INTO EMP VALUES ('2', 'DISHA', 4500.00)
INSERT INTO EMP VALUES ('3', 'MEEM', 4000.00)
INSERT INTO EMP VALUES ('4', 'NEYMAR', 5500.00)
INSERT INTO EMP VALUES ('5', 'RONALDO', 6500.00)
INSERT INTO EMP VALUES ('6', 'MESSI', 74500.00)



CREATE VIEW EMPVW
AS
SELECT E_ID, E_NAME
FROM EMP



SELECT *
FROM EMPVW

DROP VIEW EMPVW












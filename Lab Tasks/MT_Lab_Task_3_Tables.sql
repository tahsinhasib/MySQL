
Lab Task - 3
---------------------


Questions
----------------------------------------------------------------------------
/*

1.Create a table name Student from the following structure using SQL commands

    ------------------------------------------
    s_id                |       Number(10)         
    s_name              |       Varchar2(20)
    phone               |       number
    address             |       Varchar2(50)
    email               |       Varchar2(30)
    credit_completed    |       Number(3)
    course_completed    |       Number(2)
    cgpa                |       float
    ------------------------------------------

2. Add the following columns into the above student table

    -----------------------------------------
    department          |       Varchar2(5)
    gender              |       Varchar2(6)
    -----------------------------------------

3. Modify the column name department into dept
4. Change type of the column cgpa into number(4,3)
5. Drop column email from student table
6. Change the table name from student to students

*/


Answers
------------------------------------------------------
1.
CREATE TABLE STUDENT(
    S_ID NUMBER(10) CONSTRAINT S_ID_PK PRIMARY KEY,
    S_NAME VARCHAR2(20),
    PHONE NUMBER,
    ADDRESS VARCHAR2(50),
    EMAIL VARCHAR2(30),
    CREDIT_COMPLETED NUMBER(3),
    COURSE_COMPLETED NUMBER(2),
    CGPA FLOAT
);

DESC STUDENT

2.
ALTER TABLE STUDENT 
ADD DEPARTMENT VARCHAR2(5)
ALTER TABLE STUDENT 
ADD GENDER VARCHAR2(6)

3.
ALTER TABLE STUDENT 
RENAME COLUMN DEPARTMENT TO DEPT

4.
ALTER TABLE STUDENT 
ALTER COLUMN CGPA FLOAT(4,3)

5.
ALTER TABLE STUDENT 
DROP COLUMN EMAIL



---------------------------------------------------------------------------------
/*
    PRIMARY KEY

    The PRIMARY KEY constraint uniquely identifies each record in a database table.
    Primary keys must  contain unique values. A primary key column cannot contain NULL
    values. Each table should have a  primary key, and each table can have only ONE primary key.


    <colname> <datatype>(size) CONSTRAINT <constraint name> PRIMARY KEY

*/
---------------------------------------------------------------------------------


---------------------------------------------------------------------------------
/*
    FOREIGN KEY 

    PRIMARY KEY table must be created first. Foreign key column Size should be 
    same as primary key column.

    <col name> <datatype>(size) 
    CONSTRAINT <constraint_name> 
    REFERENCES <parent_table_name>(parent_table_column_name) 


*/
---------------------------------------------------------------------------------

CREATE TABLE DEPT(
    DID NUMBER(10) CONSTRAINT DEPT_DID_PK PRIMARY KEY,
    DNAME VARCHAR2(50)
);

CREATE TABLE STUDENT(
    SID NUMBER(10) CONSTRAINT STUDENT_SID_PK PRIMARY KEY,
    SNAME VARCHAR2(50),
    DID NUMBER(10) CONSTRAINT STUDENT_DID_FK REFERENCES DEPT(DID)
);

DROP TABLE STUDENT

DESC STUDENT

DESC DEPT

INSERT INTO STUDENT
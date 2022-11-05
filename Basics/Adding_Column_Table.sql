CREATE TABLE AIUB (
   ID NUMBER (8) CONSTRAINT ID_PK PRIMARY KEY,
   TUTION DECIMAL (6,2), 
   COURSE VARCHAR2 (255),
   INSTRUCTOR VARCHAR2 (255)
);

DESC AIUB

DROP TABLE AIUB

SELECT *
FROM AIUB


INSERT INTO AIUB VALUES (1, 3500.00, 'DATABASE', 'STEVEN')
INSERT INTO AIUB VALUES (2, 3500.00, 'DATA STRUCTURE', 'BRANDON')

-------------------------------------------------------------------------------
/*
    ALTER TABLE <table name> ADD (
        <col name> <type> (size),
        <col name> <type> (size),
        ........................,
    );


    can add as many as we like at one action

*/
-------------------------------------------------------------------------------


ALTER TABLE AIUB ADD (
   COURSES VARCHAR2 (255),
   TPE VARCHAR2 (255)
);
   




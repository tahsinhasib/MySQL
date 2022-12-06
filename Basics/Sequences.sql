-- custom EMP table 

/*  Sequences
    -------------------------------------------
    -> Automatically generates unique numbers
    -> Is a sharable object
    -> Is typically used to create a primary key value
    -> Replaces application code
    -> Speeds up the efficiency of accessing sequence values when cached in memory

    * NEXTVAL returns the next available sequence value.
	-> It returns a unique value every time it is referenced, even for different users.
    
    * URRVAL obtains the current sequence value.
	-> NEXTVAL must be issued for that sequence before CURRVAL contains a value.

    * Caching sequence values in memory allows faster access to those values.
    Gaps in sequence values can occur when:
    -> A rollback occurs
    -> The system crashes
    -> A sequence is used in another table
    -> View the next available sequence, if it was created with NOCACHE, by querying the USER_SEQUENCES table.

    * You must be the owner or have the ALTER privilege for the sequence.
    -> Only future sequence numbers are affected.

    *** The sequence must be dropped and re-created to restart the sequence at a different number.

    * Remove a sequence from the data dictionary by using the DROP SEQUENCE statement.

    * Once removed, the sequence can no longer be referenced.
*/

CREATE SEQUENCE EMPSEQ
START WITH 101
INCREMENT BY 2
MAXVALUE 110



DROP SEQUENCE EMPSEQ


SELECT * 
FROM EMP


INSERT INTO EMP (EID,ENAME,SAL) VALUES (EMPSEQ.NEXTVAL, 'ALEX', 1000)

INSERT INTO EMP VALUES (EMPSEQ.NEXTVAL, 'BOB', 2000)
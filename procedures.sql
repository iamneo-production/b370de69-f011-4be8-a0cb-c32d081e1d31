
--1. TOTAL MALE USERS IN SOCIAL MEDIA?
CREATE OR REPLACE PROCEDURE
COUNTOFMALE
IS
 U_COUNT NUMBER;
BEGIN
 SELECT
 COUNT(*)
 INTO
 U_COUNT
 FROM
 FACEBOOK
 WHERE
 GENDER='male';
 DBMS_OUTPUT.PUT_LINE(U_COUNT);
END;
/

--2. TOTAL FEMALE USERS ABOVE AGE 18?

CREATE OR REPLACE PROCEDURE
COUNTOFFEMALE
IS
    U_COUNT NUMBER;
BEGIN
    SELECT 
        COUNT(*) 
    INTO 
        U_COUNT 
    FROM 
        FACEBOOK
    WHERE 
        GENDER='female' AND AGE>18;
    DBMS_OUTPUT.PUT_LINE(U_COUNT);
END;
/

BEGIN
COUNTOFFEMALE();
END;
/


--3. COUNT OF SOCIAL MEDIA USERS OF EACH AGE?

CREATE OR REPLACE PROCEDURE
TOTAL_EACH_YEAR
IS
BEGIN
    FOR I IN(
    SELECT 
        DOB_YEAR,COUNT(*) AS COUNT_YEAR
    FROM 
        FACEBOOK
    GROUP BY DOB_YEAR)
    LOOP
    DBMS_OUTPUT.PUT_LINE(I.DOB_YEAR|| ':' ||I.COUNT_YEAR);
    END LOOP;
END;
/

BEGIN
TOTAL_EACH_YEAR();
END;
/


--4. COUNT OF LIST OF USERS IN EACH AGE?

CREATE OR REPLACE PROCEDURE
TOTAL_EACH_AGE
IS
BEGIN
 FOR I IN(
 SELECT
 AGE,COUNT(*) AS COUNT_AGE
 FROM
 FACEBOOK
 GROUP BY AGE)
 LOOP
 DBMS_OUTPUT.PUT_LINE(I.AGE|| ':' ||I.COUNT_AGE);
 END LOOP;
END;
/
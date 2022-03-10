--The table name: FACEBOOK

SELECT * FROM FACEBOOK;

--1. Count the Male users Born in the year 1999?

SELECT COUNT(*)
FROM FACEBOOK 
WHERE GENDER='female' and DOB_YEAR=1999;

--2. Count the Female users born in years between 1997 and 2000?

SELECT COUNT(*)
FROM FACEBOOK
WHERE GENDER='female' and (DOB_YEAR BETWEEN 1997 AND 2000);

--3. Display the details of users' age above 15?

SELECT *
FROM FACEBOOK
where AGE>15;

--4. Display the details of Male Users?

SELECT * FROM FACEBOOK WHERE GENDER='male';


--5. Display the details of id 2104073?

SELECT * 
FROM FACEBOOK
WHERE USERID=21004073;


SELECT * FROM FACEBOOK;

SELECT COUNT(*)
FROM FACEBOOK
WHERE GENDER='male' AND DOB_YEAR=1999;

SELECT COUNT(*)
FROM FACEBOOK
WHERE GENDER='female' AND (DOB_YEAR BETWEEN 1997 AND 2000);

SELECT *
FROM FACEBOOK
WHERE AGE>15;

SELECT *
FROM FACEBOOK
WHERE GENDER='male';

SELECT *
FROM FACEBOOK
WHERE USERID=2104073;
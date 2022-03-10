--The table name: FACEBOOK

SELECT * FROM FACEBOOK;

--1. Find Total users in social media above age 15?

SELECT COUNT(*)
FROM FACEBOOK
WHERE AGE>15;

--2. Find the total Male users in social media?

SELECT COUNT(*) 
FROM FACEBOOK
WHERE GENDER='male';

--3. Find the Total Female users above age 18?

SELECT COUNT(*)
FROM FACEBOOK
WHERE GENDER='female' and AGE>18;

--4. Find the Tolal users who are born in the year 1999?

SELECT COUNT(*)
FROM FACEBOOK
WHERE DOB_YEAR=1999;

--5. Count the total users born each year?

SELECT COUNT(*),DOB_YEAR
FROM FACEBOOK
GROUP BY DOB_YEAR;

--6. Count the Male users above age 15?

SELECT COUNT(*)
FROM FACEBOOK
WHERE GENDER='male' and AGE>15;

--7. Count the social media users of each age?

SELECT COUNT(*),AGE
FROM FACEBOOK
GROUP BY AGE;

--8. Find the percentage of female users using above age 17?

SELECT ROUND(100.0*SUM(CASE WHEN GENDER='female' THEN 1 ELSE 0 END)/COUNT(*),2) FEMALE_PERC
FROM FACEBOOK
WHERE AGE>17;

--9. Find the percentage of female users who are using social media?

SELECT ROUND(100.0*SUM(CASE WHEN GENDER='female' THEN 1 ELSE 0 END)/COUNT(*),2) FEMALE_PERC
FROM FACEBOOK;

--10. Count the list of users in each age?

SELECT COUNT(*),AGE
FROM FACEBOOK
GROUP BY AGE;
--The table name: FACEBOOK

SELECT * FROM FACEBOOK;

--1. Find the total users using social media?

SELECT COUNT(*)
FROM FACEBOOK;

--2. Find how many Percentage of Male users use social media?

SELECT ROUND(100.0*SUM(CASE WHEN GENDER='male' THEN 1 ELSE 0 END)/COUNT(*),2) MALE_PERC
FROM FACEBOOK;

--3. Find How many Percentages of female users use social media?

SELECT ROUND(100.0*SUM(CASE WHEN GENDER='female' THEN 1 ELSE 0 END)/COUNT(*),2) FEMALE_PERC
FROM FACEBOOK;

--4. Find how many Percentage of Male users age above 15 use social media?

SELECT ROUND(100.0*SUM(CASE WHEN GENDER='male' THEN 1 ELSE 0 END)/COUNT(*),2) MALE_PERC
FROM FACEBOOK
WHERE AGE>15;

--5. Find how many Percentages of Female users age above 15 use social media?

SELECT ROUND(100.0*SUM(CASE WHEN GENDER='female' THEN 1 ELSE 0 END)/COUNT(*),2) FEMALE_PERC
FROM FACEBOOK
WHERE AGE>15;
select * from facebook;

select count(*)
from FACEBOOK
where age>15;

select count(*)
from FACEBOOK
where gender='male';

select count(*)
from FACEBOOK
where gender='female' and AGE>18;


select count(*)
from FACEBOOK
where DOB_YEAR=1999;

SELECT COUNT(*),DOB_YEAR
FROM FACEBOOK
GROUP BY DOB_YEAR;

SELECT COUNT(*)
FROM FACEBOOK
WHERE GENDER='male' and AGE>15;

SELECT COUNT(*),AGE 
FROM FACEBOOK
GROUP BY AGE;

SELECT ROUND(100.0*SUM(CASE WHEN GENDER='female' then 1 else 0 end )/count(*),2)
FEMALE_PERC
from FACEBOOK
where age>17;

SELECT ROUND(100.0*SUM(CASE WHEN GENDER='female' then 1 else 0 end )/count(*),2)
FEMALE_PERC
from FACEBOOK;

select count(*),age
from FACEBOOK
group by age;


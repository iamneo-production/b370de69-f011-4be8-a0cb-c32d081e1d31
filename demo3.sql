select count(*) from facebook;

select round(100.0*sum(case when gender='male' then 1 else 0 end)/count(*),2)
male_perc from facebook;

select round(100.0*sum(case when gender='female' then 1 else 0 end)/count(*),2)
female_perc from facebook;

select round(100.0*sum(case when gender='male' then 1 else 0 end)/count(*),2)
male_perc from facebook where age>15;

select round(100.0*sum(case when gender='female' then 1 else 0 end)/count(*),2)
female_perc from facebook where age>15;
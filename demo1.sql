select * from facebook;

select count(*) from facebook 
        where age>15;

select count(*) from facebook 
        where gender='male';

select count(*) from facebook 
        where gender='female' and age>18;

select count(*) from facebook  
        where dob_year=1999;

select count(*),dob_year from facebook 
        group by dob_year;

select count(*) from facebook 
        where gender='male' and age>15;

select count(*),age from facebook group by age;

select round(100.0*sum(case when gender='female' then 1 else 0 end)/count(*),2)
female_perc from facebook where age>17;

select round(100.0*sum(case when gender='female' then 1 else 0 end)/count(*),2)
female_perc from facebook;

select count(*),age from facebook group by age;
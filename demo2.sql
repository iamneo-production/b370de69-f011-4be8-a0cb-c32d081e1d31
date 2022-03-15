select count(*) from facebook 
        where gender='male' and dob_year=1999;

select count(*) from facebook 
        where gender='female' and 
                (dob_year>=1999 and dob_year<=2000);

select * from facebook where age>15;

select * from facebook where gender='male';

select * from facebook where userid=2104073;
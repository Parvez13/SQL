TODO: DISTINCT
If we have duplicates in the database then we use distinct to have single 

SELECT DISTINCT stu_fname AS FirstName, email from students;
SELECT DISTINCT stu_fname from students;
select stu_fname from students;
SELECT DISTINCT email from students;
SELECT  email from students;
SELECT  login_count from students;
SELECT DISTINCT login_count from students;
SELECT signup_month FROM students;
SELECT DISTINCT signup_month FROM students;


TODO:  ORDER BY
In order to sort the list 

SELECT DISTINCT stu_fname, login_count, course_count 
from students ORDER BY login_count;

select distinct stu_fname, login_count, signup_month
from students order by login_count, signup_month;

select distinct stu_fname, stu_lname, course_count, login_count
from students order by  login_count;

select distinct email from students order by email;


To sort in ascending order
SELECT DISTINCT stu_fname, login_count, course_count 
from students ORDER BY login_count ASC;

To sort in descending order

SELECT DISTINCT stu_fname, login_count, course_count 
from students ORDER BY login_count DESC;
SELECT DISTINCT stu_fname, login_count, course_count 
from students ORDER BY stu_fname DESC;
SELECT DISTINCT stu_fname, login_count, course_count 
from students ORDER BY 3 DESC;

SELECT DISTINCT  stu_fname, login_count from students ORDER BY login_count ASC;
SELECT DISTINCT  stu_fname, course_count from students ORDER BY course_count ASC;

TODO: LIMIT
To find out the limited order

SELECT DISTINCT stu_fname, login_count
from students ORDER BY login_count DESC LIMIT 5;
SELECT DISTINCT stu_fname, login_count
from students ORDER BY login_count DESC LIMIT  2 ,5;
SELECT DISTINCT stu_fname, login_count
from students ORDER BY login_count DESC LIMIT  1 ,5;
SELECT DISTINCT email , course_count from students order by course_count  LIMIT 10;
SELECT DISTINCT email , course_count from students order by course_count ASC LIMIT 10;
SELECT DISTINCT login_count, signup_month from students order by signup_month LIMIT  5;

TODO: LIKE
To select a particular information without knowing about the full details

To select field with ending alphabets
SELECT stu_fname, email from students WHERE stu_fname LIKE '%esh';
To select field with starting alphabets
SELECT stu_fname, email from students WHERE stu_fname LIKE 'm%';
To select field with only knowing first alphabet and counting remaing alphabets
SELECT stu_fname, email from students WHERE stu_fname LIKE 'm___';
SELECT stu_fname, email, login_count, signup_month, course_count from students WHERE stu_fname LIKE 'y%';
SELECT * from students WHERE STU_FNAME LIKE 'A%';
SELECT * FROM STUDENTS WHERE STU_LNAME LIKE '%e';
SELECT * FROM STUDENTS WHERE STU_LNAME LIKE '%t';
SELECT * FROM STUDENTS WHERE EMAIL LIKE 'a%';

TODO: COUNT

SELECT DISTINCT COUNT(stu_fname) from students;

SELECT  COUNT( DISTINCT stu_fname) AS COUNT from students;

SELECT COUNT(DISTINCT email) as count from students;
SELECT COUNT(signup_month) FROM STUDENTS;

TODO: for reading
mariadb documentation

TODO:  SQL mode

SET @@sql_mode='';

TODO: GROUP BY

SELECT stu_fname, signup_month from students
GROUP BY signup_month;
SELECT stu_fname, course_count from students
GROUP BY course_count;
SELECT stu_fname, signup_month, COUNT(*)  AS COUNT from students
GROUP BY signup_month;
SELECT STU_FNAME, STU_LNAME, login_count FROM STUDENTS GROUP BY login_count;
SELECT STU_FNAME, STU_LNAME, login_count FROM STUDENTS ;
SELECT * FROM STUDENTS GROUP BY signup_month;
SELECT DISTINCT * FROM STUDENTS GROUP BY login_count;
SELECT DISTINCT * FROM STUDENTS GROUP BY course_count ;

TODO: UPTO HERE PRACTISE HAS COMPLETED

TODO: MIN AND MAX

SELECT stu_fname, email, MAX(login_count) from students;
SELECT stu_fname, email, Min(login_count) from students;
SELECT STU_LNAME, EMAIL , MAX(signup_month) FROM STUDENTS;
SELECT STU_FNAME, STU_LNAME, EMAIL , MAX(signup_month) FROM STUDENTS;

SELECT stu_fname, email, login_count from students
WHERE login_count= (SELECT MAX(login_count) from students);

SELECT stu_fname , email,login_count from students
WHERE login_count= (SELECT MIN(login_count) from students);

SELECT stu_fname , email, course_count from students
WHERE course_count=(SELECT MIN(course_count) from students);

TODO: GROUP BY WITH MAX AND MIN

SELECT MAX(login_count) AS login_count, signup_month from students
GROUP By signup_month ORDER BY signup_month;

TODO: SUM AND AVERAGE WITH GROUP BY

SELECT signup_month, login_count from students
WHERE signup_month=7;
SELECT signup_month, SUM(login_count) from students
GROUP BY signup_month;
SELECT signup_month,AVG(login_count) AS login_count from students
GROUP BY signup_month;
SELECT course_count, Sum(signup_month) AS signup_month from students
GROUP BY course_count;

TODO: AND and OR
Find Users Who are Having login count of least 20 and are enrolled in at least 5 courses

SELECT email, login_count, signup_month, course_count from students
WHERE login_count>=20 AND course_count >= 5
ORDER BY login_count;


SELECT email, login_count, signup_month, course_count from students
WHERE login_count>=20 OR course_count >= 5
ORDER BY login_count;

Find users who signed up in 7th and 10th month
SELECT email, login_count, course_count,  from students
WHERE signup_month=7 OR signup_month=10;
SELECT email, login_count, course_count, signup_month from students
WHERE signup_month=7 AND signup_month=10;

SELECT  EMAIL, COURSE_COUNT from students WHERE course_count = 1 AND course_count= 5;

TODO: RANGE -BETWEEN 

SELECT email, login_count, signup_month from students
WHERE signup_month BETWEEN 7 AND 10;
SELECT email, login_count from students WHERE login_count BETWEEN 5 AND 8;

TODO: CASE
To find the custom details particular 

SELECT stu_fname, signup_month,
    CASE
        WHEN signup_month BETWEEN 7 AND 10 THEN 'EARLY BIRD'
        WHEN signup_month BETWEEN 11 AND 12 THEN 'REGULAR USER'
        ELSE '##'
    END AS Custom
from students;

SELECT STU_FNAME, login_count,
    CASE
        WHEN login_count BETWEEN 4 AND 8 THEN 'OOO'
        WHEN login_count BETWEEN 9 AND 11 THEN 'HHH'
        ELSE '**'
    END AS Custom
from students;
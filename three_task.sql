TODO:  CONCAT

SELECT  CONCAT(stu_fname,' ', stu_lname) AS fullname from students;
SELECT  CONCAT(stu_fname,' ', stu_lname) AS fullname, login_count from students;
SELECT  CONCAT(stu_fname,' ', stu_lname) AS fullname, login_count, course_count from students;
SELECT  CONCAT(stu_fname, ' ', stu_lname, ' and login count is ', login_count) AS "full info" from students;
 SELECT CONCAT( "User's login count = ", login_count , '  and course count =  ', course_count ) AS Details from students;
SELECT CONCAT("User's signup count = ", signup_month, ' and login count = ', login_count ) AS Info from students;
SELECT CONCAT(stu_fname, ' ', email) AS Info from students;
SELECT CONCAT("Student's name = ", stu_fname, ' ', stu_lname ,  '  Email Id = ', email) AS Details from students;
 
TODO: REPLACE
SELECT  REPLACE(stu_fname, 'a', '@')  AS fun from students;
SELECT  REPLACE(stu_lname, 's', '$')  AS fun from students;
SELECT stu_fname from students;
SELECT REPLACE(REPLACE(stu_fname, 'a', '@'), 's','$') from students
SELECT REPLACE(stu_fname, 'h', '*') from students

TODO: SUBSTRING

SELECT CONCAT(SUBSTRING(email, 1, 7), '...') AS email from students;
SELECT CONCAT(SUBSTRING(email, 1, 3), '***' ) AS email from students;
SELECT CONCAT(SUBSTRING(stu_fname, 1, 5), '***') AS name from students;

TODO: REVERSE

SELECT REVERSE(stu_fname) from students;
SELECT REVERSE(signup_month) from students;
SELECT REVERSE(login_count) from students;

TODO: CHAR_LENGTH

SELECT email,  CHAR_LENGTH(email)  AS LENGTH from students;

TODO: UPPER CASE AND LOWER CASE

SELECT UPPER(stu_fname) AS "Upper name" , stu_lname from students;


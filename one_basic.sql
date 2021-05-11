
SHOW DATABASES;
-- SELECT DATABASE();
 USE photo_store;
 SELECT DATABASE();


CREATE TABLE cameras(
    model_name VARCHAR(30),
    quantity INT
);

DESC cameras;

 DROP TABLE cameras;
 SHOW TABLES

TODO: camera table creating and after that describing to check it whether it is created or not


TODO: It is to create a table
CREATE TABLE canon_cameras(
    model_name VARCHAR(30),
    quantity INT
);

DESC canon_cameras;

70D - 12
80D - 19
EOS-R - 25
EOS-r5 - 80
EOS-r6 - 50

TODO: for inserting values into the table
INSERT INTO canon_cameras(model_name, quantity)
VALUES("70-D", 12),
("80-D", 19),
("EOS-R", 25),
("EOS-r5", 80),
("EOS-r6", 50);

TODO: for showing details in the table
SELECT * from canon_cameras;
TODO: it is for showing particular name 
SELECT model_name from canon_cameras;
TODO: for showing particular quantity
SELECT quantity from canon_cameras;
TODO: for showing answers for customer questions
SELECT model_name, quantity from canon_cameras
WHERE model_name='80-D';
SELECT model_name, quantity from canon_cameras
WHERE quantity>=50;
SELECT model_name, quantity from canon_cameras
WHERE model_name= 'EOS-R'
DROP TABLE  canon_cameras;
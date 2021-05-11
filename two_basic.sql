SHOW DATABASES;

TODO: creating customer table
CREATE TABLE customers(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    email VARCHAR(40) NOT NULL DEFAULT 'No email provided',
    amount INT,
    PRIMARY KEY (id)
)

TODO: Inserting values in tables;

INSERT INTO customers( name,email, amount)
VALUES('hitesh', 'hitesh@lco.dev', 42),
('George', 'geo@lco.de', 45),
('hitesh','hitesh@gmail.com', 33),
('lina', 'lina@gmail.com', 35),
-- ('jimmy', 'jimmy@yahoo.co.in', 54),
('lina', 'lina@yahoo.co.in', 97),
('hitesh', 'hitesh@yahoo.co.in', 46);

TODO: answering some questions
SELECT name from customers;
SELECT email from customers;
SELECT amount from customers;
SELECT * from customers;

TODO: changing the paricular name . remeber changing name doesnot affect the database it will only showing the answers with new name

SELECT amount AS Purchases from customers;

TODO: updating tasks
SELECT * from customers  WHERE name = "jimmy";

UPDATE customers SET email="jimmy@yahoo.com" WHERE name="jimmy";

SELECT * from customers where name= "hitesh"
UPDATE customers SET email = "hitesh@yahoo.com" WHERE id=7
UPDATE customers SET email = "hitesh@google.com" WHERE id=1
UPDATE customers SET amount = 50 WHERE id=1
UPDATE customers SET amount = 38 WHERE id=4

SELECT * from customers where name = "lina"
UPDATE customers SET email= "lina@gmail.com" WHERE name= 'lina'

SELECT * from customers WHERE name = 'hitesh'
UPDATE customers SET email= 'hitesh@gmail.com' WHERE name = 'hitesh'

TODO: Deleting a specific task

SELECT * from customers WHERE name = 'George'

DELETE  from customers WHERE name= 'George';

SELECT * from customers WHERE name = 'hitesh';

DELETE FROM customers WHERE name = 'hitesh';

DELETE FROM customers WHERE name = 'lina';

TODO: Practise purpose

DELETE from customers WHERE id= 8;
DELETE  from customers WHERE id =   13

CREATE TABLE daily_customers(
    ID  INT  NOT NULL AUTO_INCREMENT,
    NAME VARCHAR(100) NOT NULL,
    EMAIL_ID  VARCHAR(100) NOT NULL DEFAULT 'No email provided',
    Purchases  INT,
    AGE  INT,
    SEX  VARCHAR(1),
    PRIMARY KEY (ID)
)

DESC daily_customers;

INSERT INTO daily_customers(NAME, EMAIL_ID, Purchases, AGE, SEX)
VALUES
('Leonardo de carpio', 'leo@gmail.com', 0 , 45, 'M')
('Jonny Depp', 'jonny@yahoo.com',52,48, 'M'),
('Scarlett Johnson', 'scarjohn@email.com', 79, 39, 'F'),
('Morgot Robbie', 'robbie@gmail.com', 70, 33, 'F'),
('Will Smith', 'smith@google.com', 92, 47, 'M')

UPDATE daily_customers SET Purchases = 50 WHERE id = 1;
UPDATE daily_customers SET EMAIL_ID = 'scaryjohn@gmail.com' WHERE id = 3;
UPDATE daily_customers SET EMAIL_ID = 'smith@yahoo.com' WHERE id =5
CREATE DATABASE new_lco;
USE new_lco;

CREATE TABLE users(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30),
    email VARCHAR(60)

-
DESC users

CREATE TABLE purchases(
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount INT,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

DESC purchases

INSERT INTO users(name, email)
VALUES('Thor', 'thor@gmail.com'),
('Peter', 'peter@gmail.com'),
('Tony','tony@gmail.com'),
('Kevin', 'kevin@gmail.com')

INSERT INTO purchases(order_date, amount, user_id)
VALUES('2020-01-28',299,8);
('2020-01-23',786, 6);


-- TODO: Creating Table
-- CREATE TABLE users(
--     name  VARCHAR(50),
--     col1 DATE,
--     col2 TIME,
--     col3 DATETIME
-- );

-- TODO: add some values

-- INSERT INTO users(name, col1, col2,col3)
-- VALUES(
--     'sohail', '2020-08-14', '10:13:22', '2021-08-14 11:13:22'
-- )

-- INSERT INTO users(name, col1, col2,col3)
-- VALUES(
--     'Parvez', '2020-08-14', '10:13:22', NOW()
-- )

-- TODO: GET THE DATA

-- SELECT name, MONTH(col3) from users;
-- SELECT name, YEAR(col3) from users;
-- SELECT name, DAY(col3) from users;
-- SELECT name, HOUR(col3) from users;
-- SELECT name, SECOND(col3) from users;
-- SELECT name, MINUTE(col3) from users;
-- SELECT name, DATE_FORMAT(col3, '%m--%d--%Y') from users;
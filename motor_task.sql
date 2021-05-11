TODO: Q:1
SELECT customers.customer_name ,orders.status
FROM orders
INNER JOIN customers ON customers.customer_id = orders.customer_id WHERE orders.status = "Cancelled";
TODO: PRACTICE JOIN AND TYPES OF JOIN PERFECTLY

TODO: Q:2
SELECT Customers.customer_name,Payments.amount
FROM Customers
INNER JOIN Payments ON Customers.customer_id = Payments.customer_id WHERE amount BETWEEN 5000 AND 35000;

SELECT Customers.Customer_name,Payments.amount FROM customers LEFT JOIN payments ON payments.customer_id = customers.customer_id WHERE Payments.amount BETWEEN 5000 AND 35000 ORDER BY payments.amount
SELECT * FROM customers LEFT JOIN payments ON payments.customer_id = customers.customer_id WHERE Payments.amount BETWEEN 5000 AND 35000 ORDER BY payments.amount

-- TODO: Q:3
SELECT * FROM employees WHERE employee_id = 15657

TODO: Q:4



TODO: Q:5
tough
SELECT  Products.product_code,Products.product_name, orders.order_id,orders.status 
FROM Products
INNER JOIN orders ON Products.product_id

TODO:Q:6

SELECT employees.* 
FROM employees
INNER JOIN offices ON offices.office_code =  employees.office_code
WHERE country = "Sydney"


TODO: Q:7
SELECT Customers.* ,orders.status
From Customers
INNER JOIN orders ON orders.customer_id = Customers.customer_id
WHERE Orders.status = "IN PROCESS"

TODO: Q:8
SELECT products.product_code, product_name,product_line,orderdetails.quantity_ordered
FROM products
INNER JOIN orderdetails ON orderdetails.product_code = products.product_code
WHERE quantity_ordered < 30;

TODO: Q:9
SELECT check_number,amount from payments 
WHERE check_number = 'OM314933';

UPDATE payments SET amount = '2575' WHERE payments.check_number = 'OM314933';

TODO: Q:10
SELECT employees.*,orders.status
from ((employees
INNER JOIN customers ON customers.sales_employee_id = employees.employee_id)
INNER JOIN orders ON orders.customer_id = customers.customer_id) 
WHERE orders.status = 'RESOLVED';

TODO: Q:11

SELECT Customers.customer_id,Customers.Customer_name,Payments.amount
FROM (Customers
INNER JOIN payments ON payments.customer_id = customers.customer_id
)
WHERE payments.amount  = (SELECT MAX(amount) from payments)

TODO: Q:12

SELECT orders.order_id,orders.order_date,orders.required_date,orders.shipped_date,orders.status,orders.comments,orders.customer_id,customers.country
From Orders
INNER JOIN customers ON customers.customer_id = orders.customer_id
WHERE Customers.country = 'FRANCE' AND orders.status = 'Shipped';

TODO: Q:13

SELECT Customers.customer_id ,Orders.order_id ,COUNT(Customers.customer_id) from 
customers INNER JOIN Orders ON ORDERS.customer_id = Customers.customer_id WHERE Customers.country = 'FINLAND'

TODO: Q:14

SELECT Customers.* FROM Customers INNER JOIN Payments ON payments.customer_id = Customers.customer_id WHERE
payments.amount = (SELECT MAX(Payments.amount))

TODO: Q:15

SELECT Customers.customer_id,Customers.customer_name,payments.amount
FROM customers
INNER JOIN payments ON customers.customer_id = payments.customer_id
WHERE Payments.payment_date  BETWEEN "2019-05-01" AND "2019-06-30"

TODO: Q:16

SELECT Count(Orders.order_id)
From Customers
INNER Join Orders ON Customers.customer_id = Orders.customer_id 
where Customers.country = 'Belgium' AND Orders.shipped_date BETWEEN '2018-01-01' AND '2018-12-31';

TODO: Q:17

SELECT employees.* from employees 
CROSS JOIN offices ON offices.office_code = employees.office_code
LEFT Join customers ON customers.sales_employee_id = employees.employee_id
where Customers.country = 'Germany';

TODO: Q: 18

INSERT INTO orders('order_id', "order_date","required_date",'status','customer_id')
Values(10426, Current_date(),(Current_date()+ INTERVAL 10 DAY), "In Process", 496);
INSERT INTO orderdetails('order_id','product_code','quantity_ordered','each_price','order_line_number')
values(10426,'S12_3148',41,151,11);

TODO: Q: 19

SELECT employees.employee_id, employees.CONCAT(first_name,' ',last_name), employees.job_title, 
FROM employees 
JOIN employees reported_emp ON reported_emp.employee_id = employees.reports_to
LEFT JOIN Customers  ON customers.sales_employee_id = employees.employee_id
RIGHT JOIN payments  ON payments.customer_id = customers.customer_id
-- WHERE payments.payment_date BETWEEN "2018-06-01" and "2018-07-31";

TODO: Q: 20

INSERT INTO PAYMENTS(CUSTOMER_ID,CHECK_NUMBER,PAYMENT_DATE, AMOUNT)
VALUES(119,"OM314944",CURRENT_DATE(),33789.55)

TODO: Q: 21

SELECT Offices.address_line1 FROM employees
inner join employees reports_emp ON reports_emp.employee_id = employees.reports_to
RIGHT JOIN OFFICES ON OFFICES.OFFICE_CODE =EMPLOYEES.OFFICE_CODE

WHERE employees.employee_id = 1102

TODO: Q: 22

SELECT PAYMENTS.CUSTOMER_ID, PAYMENTS.CHECK_NUMBER,PAYMENTS.PAYMENT_DATE,PAYMENTS.AMOUNT 
FROM PAYMENTS
LEFT JOIN CUSTOMERS ON CUSTOMERS.CUSTOMER_ID = PAYMENTS.CUSTOMER_ID
RIGHT JOIN  ORDERS ON ORDERS.CUSTOMER_ID = CUSTOMERS.CUSTOMER_ID
LEFT JOIN ORDERDETAILS ON ORDERDETAILS.ORDER_ID = ORDERS.ORDER_ID
LEFT JOIN PRODUCTS ON PRODUCTS.PRODUCT_CODE = ORDERDETAILS.PRODUCT_CODE
where products.product_line = 'Classic Cars'

TODO: Q:23

SELECT COUNT(CUSTOMERS.CUSTOMER_ID) AS TOTAL_CUSTOMERS
FROM CUSTOMERS
INNER JOIN ORDERS ON ORDERS.CUSTOMER_ID = CUSTOMERS.CUSTOMER_ID
WHERE CUSTOMERS.country = 'USA'

TODO: Q:24

SELECT ORDERS.ORDER_ID , ORDERS.STATUS ,ORDERS.COMMENTS
FROM ORDERS
WHERE ORDERS.STATUS = 'RESOLVED'

TODO: Q:25

SELECT EMPLOYEES.EMPLOYEE_ID,CONCAT(EMPLOYEES.FIRST_NAME, ' ',EMPLOYEES.LAST_NAME) AS NAME, EMPLOYEES.EMAIL,EMPLOYEES.JOB_TITLE,OFFICES.COUNTRY
FROM EMPLOYEES
INNER JOIN OFFICES ON OFFICES.OFFICE_CODE = EMPLOYEES.OFFICE_CODE
WHERE OFFICES.COUNTRY = 'USA'

TODO: Q:26

SELECT Orderdetails.product_code,products.product_name,products.product_line,orderdetails.each_price,orderdetails.quantity_ordered,
orderdetails.quantity_ordered * orderdetails.each_price AS total_price
from orderdetails 
left join products on products.product_code = orderdetails.product_code 
WHERE products.product_line = "MOTORCYCLES";

TODO: Q:27

SELECT SUM(ORDERDETAILS.EACH_PRICE * ORDERDETAILS.QUANTITY_ORDERED) AS 
TOTAL_PRICE
FROM ORDERDETAILS
LEFT JOIN PRODUCTS ON products.product_code = orderdetails.product_code
WHERE PRODUCTS.PRODUCT_LINE = "PLANES";

TODO: Q:28

SELECT COUNT(*) 
FROM customers
WHERE customers.country = "France"

TODO: Q:29

SELECT Payments.Customer_id, Payments.check_number,Payments.payment_date,Payments.amount,Customers.Country
FROM Payments
INNER JOIN Customers Using(Customer_id)
Where customers.country = "France";

TODO: Q:30

SELECT EMPLOYEES.*
FROM EMPLOYEES
WHERE EMPLOYEES.reports_to = 1143;
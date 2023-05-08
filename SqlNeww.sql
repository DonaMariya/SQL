
-- joins
SELECT order_id, o.customer_id, first_name, last_name 
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id;
    
    SELECT order_id, oa.customer_id, first_name, last_name 
FROM orders_archived oa
JOIN customers c
    ON oa.customer_id = c.customer_id;
    

    
    
 -- copy of a table
 CREATE Table orders_archived as
 select * from orders;
 
  CREATE Table  order_statuses_copy as
 select * from  order_statuses;
 

    

-- join across two databases
SELECT * 
FROM order_items oi
JOIN sql_inventory.products p
ON oi.product_id = p.product_id;


-- self join
SELECT
    e.employee_id,
    e.first_name,
    m.first_name AS manager
 FROM employees e
 JOIN employees m
    ON  e.reports_to = m.employee_id;
    



-- UNIONS
SELECT order_id,
order_date,
'Active' As Status
FROM orders
WHERE order_date >= '2019-01-01'
UNION 
SELECT order_id,
order_date,
'Archived' As Status
FROM orders
WHERE order_date < '2019-01-01';






--
INSERT into Customers(first_name, last_name, birth_date, address, city, state)
Values ('nkdebug', 'blr', '1992-01-01', 'bengaluru','city', 'IN');

INSERT into order_statuses(order_status_id,name)
Values (4 ,'dispatched');


create table order_archived as
select * from orders;


-- insert/update/alter
update customers
set city = 'Delhi' 
where customer_id=11; 

update payments
set payment_method = 2 
where payment_id = 7; 

select * from orders where customer_id  IN (select customer_id from customers where customer_id=5);

-- difference drop, alter (DDL) and delete, update, insert, select(DML)
-- deleting rows...
delete from customers
where customer_id = 11;

delete from  payments 
where payment_id = 7; 
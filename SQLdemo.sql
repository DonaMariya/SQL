USE sql_store;
USE sql_inventory;

SELECT * 
FROM customers
WHERE customer_id = 7
 order by first_name;
 
 SELECT * 
FROM order_statuses
WHERE order_status_id = 3;
 -- order by name;
 
 
 
 SELECT last_name, 
    first_name,
    points,
    (points+10)*100 AS discount_factor
FROM customers;

select * 
from Customers
WHERE points > 3000 ;

select * 
from Customers
WHERE state <> 'va' ;


select * 
from Customers
WHERE birth_date > '1990-01-01';


SELECT *
FROM orders
WHERE order_date >= '2019-01-01';


SELECT *
FROM customers
WHERE birth_date >= '1990-01-01' AND points > 1000;

SELECT *
FROM customers
WHERE birth_date >= '1990-01-01' OR points > 1000;

SELECT *
FROM customers
WHERE NOT(birth_date <= '1990-01-01' OR points > 1000);


select * 
from Customers
WHERE state = 'va' OR 'GA' or 'FL';

select * 
from Customers
WHERE state IN('VA','GA','FL');

select * 
from Customers
WHERE state NOT IN('VA','GA','FL');


-- find products with quantity in stock equal to 49, 38, 72

select * 
from products
WHERE quantity_in_stock IN('49','38','72');

-- between
select * 
from Customers
WHERE points >=1000 AND points <=3000;

select * 
from Customers
WHERE points BETWEEN 1000 AND 3000;



select * 
from Customers
WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01';



select * 
from Customers
Where last_name LIKE 'b%';

-- REGEXP
select * 
from Customers
Where last_name REGEXP 'field|mac|rose';



-- is Null operator
select * 
from Customers
where phone is NOT Null;

-- Order by operator
select * 
from Customers
ORDER BY state DESC, first_name ASC;


-- LIMIT operator
select * 
from Customers
LIMIT 3;
-- pagination
-- page 1: 1-3
-- page: 4-6
-- page: 7-9



select * 
from Customers
LIMIT 4,3;
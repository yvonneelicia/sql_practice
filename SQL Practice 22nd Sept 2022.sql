SELECT * FROM sql_store.products;

-- Incrementing unit price by 10% to get new price --
SELECT name as prod_name, unit_price, unit_price * 1.1 as new_unit_price
FROM sql_store.products
ORDER BY 3 desc;

-- Using where clause to find unit prices greater than 3.00 --
SELECT name as prod_name, unit_price, unit_price * 1.1 as new_unit_price
FROM sql_store.products
WHERE unit_price > '3.00';

SELECT * FROM sql_store.customers;

-- Find D.O.B of customers where date of birth from 01-01-1980 --
SELECT customer_id, CONCAT(first_name, " ", last_name) as cust_name, birth_date
FROM sql_store.customers
WHERE birth_date >='1980-01-01'; -- YYYY-MM-DD is standard format for MySQL --

-- Find customers where date of birth from 1st of Janaury 1980 and points are greater than 1000 --
SELECT customer_id, CONCAT(first_name, " ", last_name) as cust_name, birth_date, points
FROM sql_store.customers
WHERE birth_date >='1980-01-01' AND points>1000; -- this statement only retrieves customers whos birth date is from 1st of Januaury 1980 AND have more than a 1000 points accumulated. Both conditions should be true. --

-- Find customers where date of birth from 1st of Janaury 1980 OR points are greater than 1000 --
SELECT customer_id, CONCAT(first_name, " ", last_name) as cust_name, birth_date, points
FROM sql_store.customers
WHERE birth_date >='1980-01-01' OR points>1000; -- with OR clause, this only retrieves data if either or condition is true --

-- Find customers where date of birth is greater than 1st of Janaury 1980 OR points are greater than 500 AND live in Virginia  --
SELECT customer_id, CONCAT(first_name, " ", last_name) as cust_name, birth_date, points, state
FROM sql_store.customers
WHERE birth_date > '1990-01-01' OR points>500 AND 
	state='VA';  -- the results show that customer_id 2's birth date is less than 1990-01-01 but they meet the condition for points greater than 500 and living in Virginia --
    
/* Note: The AND operator is always evalauted first. So when the above query is executed, it evaluates the AND operator before the OR operator. However, you can always change the order using () */


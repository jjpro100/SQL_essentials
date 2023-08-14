SELECT *
FROM orders
LIMIT 5;
 
SELECT *
FROM subscriptions
LIMIT 5;
 
SELECT * 
FROM customers
LIMIT 5;

------------------------------------------------------------------------

-- JOIN combines columns if an element is not mutual it is not included
SELECT *
FROM orders JOIN customers 
ON orders.customer_id = customers.customer_id;

SELECT orders.order_id,
   customers.customer_name
FROM orders
JOIN customers
  ON orders.customer_id = customers.customer_id;


  SELECT *
FROM orders
JOIN subscriptions
  ON orders.subscription_id  = subscriptions.subscription_id 
  WHERE description = "Fashion Magazine";

------------------------------------------------------------------------

-- LEFT JOIN combines columns if an element is not mutual it is still included
SELECT *
FROM newspaper
LEFT JOIN online
  ON newspaper.id = online.id;

SELECT *
FROM newspaper
LEFT JOIN online
  ON newspaper.id = online.id WHERE online.id IS NULL;

SELECT *
FROM classes 
JOIN students
 ON students.class_id = classes.id;

------------------------------------------------------------------------

-- CROSS JOIN just puts columns from different tables together
SELECT shirts.shirt_color,
   pants.pants_color
FROM shirts
CROSS JOIN pants;

SELECT COUNT(*)
FROM newspaper
WHERE start_month <= 3 AND end_month >= 3;
 

 SELECT *
FROM newspaper CROSS JOIN months;

 SELECT *
FROM newspaper CROSS JOIN months
WHERE start_month <= month AND end_month >= month;

SELECT month, COUNT(*)
FROM newspaper CROSS JOIN months 
WHERE start_month <= month AND end_month >= month GROUP BY month;

------------------------------------------------------------------------

-- UNIONs comnine tables, repeated lements are omitted
-- an append function

SELECT *
FROM table1
UNION
SELECT *
FROM table2;

------------------------------------------------------------------------

-- WITHs perform aggragates on desired output

WITH previous_results AS (
   SELECT ...
   ...
   ...
   ...
)
SELECT *
FROM previous_results
JOIN customers
  ON _____ = _____;
 


SELECT customer_id,
   COUNT(subscription_id) AS 'subscriptions'
FROM orders
GROUP BY customer_id;
 
WITH previous_query AS (
SELECT customer_id,
       COUNT(subscription_id) AS 'subscriptions'
FROM orders
GROUP BY customer_id)
SELECT customers.customer_name,
previous_query.subscriptions
FROM previous_query
JOIN customers
	ON customers.customer_id = previous_query.customer_id;


----------------------------------------------------------------
-- PostgreSQL
SELECT select_list
FROM A
INTERSECT
SELECT select_list
FROM B;
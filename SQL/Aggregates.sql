SELECT COUNT(*) -- Count entries in table
FROM fake_apps;

SELECT SUM(downloads) AS 'Total' -- Sum entries in table
FROM fake_apps;

SELECT MIN(downloads)
FROM fake_apps;

SELECT MAX(price)
FROM fake_apps;

SELECT AVG(downloads)
FROM fake_apps;

SELECT name, ROUND(price, 0)
FROM fake_apps;

SELECT ROUND(AVG(price), 2)
FROM fake_apps;

SELECT price, COUNT(*) 
FROM fake_apps WHERE price = 0.0 OR price = 0.99
GROUP BY price; -- Grouping

SELECT price, COUNT(*) 
FROM fake_apps WHERE downloads > 20000
GROUP BY price;

SELECT category, SUM(downloads) 
FROM fake_apps 
GROUP BY category;

------------------------------------------------------------------------

SELECT ROUND(imdb_rating),   -- Statement 1
   COUNT(name)
FROM movies
GROUP BY ROUND(imdb_rating)
ORDER BY ROUND(imdb_rating);

SELECT ROUND(imdb_rating), -- Statement 2 = Statement 1 after choosing selected columns
   COUNT(name)
FROM movies
GROUP BY 1
ORDER BY 1;

------------------------------------------------------------------------

SELECT category, 
   price,
   AVG(downloads)
FROM fake_apps
GROUP BY category, price;

SELECT category, 
   price,
   AVG(downloads)
FROM fake_apps
GROUP BY 1, 2;

------------------------------------------------------------------------

SELECT year,
   genre,
   COUNT(name)
FROM movies
GROUP BY 1, 2
HAVING COUNT(name) > 10;


SELECT price, 
   ROUND(AVG(downloads)),
   COUNT(*)
FROM fake_apps
GROUP BY price
HAVING COUNT(*) > 10;

-- When we want to limit the results of a query based on values of the individual rows, use WHERE.
-- When we want to limit the results of a query based on an aggregate property, use HAVING.
-- HAVING statement always comes after GROUP BY, but before ORDER BY and LIMIT.
-- 1. Everything
SELECT * FROM movies;

-- 2. Specific columns
SELECT name, genre 
FROM movies;

-- 4. A column with an alias: AS
SELECT name AS 'Titles'
FROM movies;

SELECT imdb_rating AS 'IMDb'
FROM movies;

-- 5. Get all the distinct elements from a column: DISTINCT
SELECT DISTINCT tools 
FROM inventory;

SELECT DISTINCT genre 
FROM movies;

-- 6. Conditionals: !=, =, <, >, <=, >=
SELECT * 
FROM movies 
WHERE imdb_rating < 5;

SELECT * 
FROM movies 
WHERE year > 2014;

-- 7. Pattern search: LIKE
SELECT * 
FROM movies
WHERE name LIKE 'Se_en';

-- 8. Pattern search with: % (autocomplete)
SELECT * 
FROM movies
WHERE name LIKE '%man%';

SELECT * 
FROM movies
WHERE name LIKE '%man';

SELECT * 
FROM movies
WHERE name LIKE 'man%';

-- 9. NULL or NOT NULL entries
SELECT name
FROM movies 
WHERE imdb_rating IS NOT NULL;

SELECT name
FROM movies 
WHERE imdb_rating IS NULL;

-- 10. BETWEEN (choosing a range)
SELECT *
FROM movies
WHERE year BETWEEN 1990 AND 1999;

SELECT *
FROM movies
WHERE name BETWEEN 'A' AND 'J';
-- If a movie has a name of simply ‘J’, it would actually match. 
-- This is because BETWEEN goes up to the second value — up to ‘J’. 
-- So the movie named ‘J’ would be included in the result set but not ‘Jaws’.

-- 11. The AND operator
SELECT * 
FROM movies
WHERE year BETWEEN 1990 AND 1999
   AND genre = 'romance';

SELECT *
FROM movies
WHERE year BETWEEN 1970 AND 1979
  AND imdb_rating > 8;

SELECT *
FROM movies
WHERE year < 1985
   AND genre = 'horror';

-- 12. The OR operator
SELECT *
FROM movies
WHERE year > 2014
   OR genre = 'action';

-- 13. Sorting results of a query
SELECT *
FROM movies
ORDER BY name;


SELECT *
FROM movies
WHERE imdb_rating > 8
ORDER BY year DESC; -- DESC (descending) and ASC (ascending)

-- 14. Just sample a few: LIMIT
SELECT *
FROM movies
LIMIT 10;

SELECT *
FROM movies
ORDER BY imdb_rating DESC
LIMIT 3;

-- 15. Switch and cases: CASE
SELECT name,
   CASE
      WHEN imdb_rating > 8 THEN 'Fantastic'
      WHEN imdb_rating > 6 THEN 'Poorly Received'
      ELSE 'Avoid at All Costs'
   END
FROM movies;

SELECT name,
   CASE
      WHEN genre = 'romance' OR genre = 'comedy' THEN 'Chill'
      ELSE 'Intense'
   END AS 'Mood'
FROM movies;

SELECT name,
   CASE
      WHEN imdb_rating > 8 THEN 'Fantastic'
      WHEN imdb_rating > 6 THEN 'Poorly Received'
      ELSE 'Avoid at All Costs'
   END AS 'Review'
FROM movies;

-- In the result, you have to scroll right because 
-- the column name is very long. To shorten it, we can rename the column to ‘Review’ using AS.
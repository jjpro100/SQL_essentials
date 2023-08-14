SELECT * 
FROM flights
LIMIT 10;

SELECT * 
FROM flights 
WHERE origin in (
    SELECT code 
    FROM airports 
    WHERE elevation < 2000);

SELECT * 
FROM flights
WHERE origin in (
    SELECT code 
    FROM airports 
    WHERE faa_region = 'ASO');


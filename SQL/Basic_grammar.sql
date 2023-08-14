-- Table creation
CREATE TABLE celebs (
   id INTEGER, 
   name TEXT, 
   age INTEGER
); 

-- CREATE TABLE table_name (
--    column_1 data_type, 
--    column_2 data_type, 
--    column_3 data_type
-- );

-- This is a query
SELECT * FROM celebs;

-- Insertion
INSERT INTO celebs (id, name, age) 
VALUES (1, 'Justin Bieber', 22); 

INSERT INTO celebs (id, name, age) 
VALUES (2, 'Beyonce Knowles', 33); 
 
INSERT INTO celebs (id, name, age) 
VALUES (3, 'Jeremy Lin', 26); 
 
INSERT INTO celebs (id, name, age) 
VALUES (4, 'Taylor Swift', 26); 


-- More query examples
SELECT name FROM celebs;
-- SELECT * FROM celebs;


-- Modify table
ALTER TABLE celebs 
ADD COLUMN twitter_handle TEXT;

SELECT * FROM celebs; 

-- Update existing record
UPDATE celebs 
SET twitter_handle = '@taylorswift13' 
WHERE id = 4; 

SELECT * FROM celebs;

-- Deletion
DELETE FROM celebs 
WHERE twitter_handle IS NULL;

SELECT * FROM celebs; 


-- Table creation with constraints
 CREATE TABLE awards (
   id INTEGER PRIMARY KEY,
   recipient TEXT NOT NULL,
   award_name TEXT DEFAULT 'Grammy'
);
-- 1. PRIMARY KEY columns can be used to uniquely identify the row. 
-- Attempts to insert a row with an identical value to a row already 
-- in the table will result in a constraint violation which will not 
-- allow you to insert the new row.

-- 2. UNIQUE columns have a different value for every row. 
-- This is similar to PRIMARY KEY except a table can have many different UNIQUE columns.

-- 3. NOT NULL columns must have a value.
-- Attempts to insert a row without a value for a NOT NULL 
-- column will result in a constraint violation and the new row will not be inserted.

-- 4. DEFAULT columns take an additional argument that will be 
-- the assumed value for an inserted row if the new row does not specify
-- a value for that column.
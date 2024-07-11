Data Manipulation Language (DML) is a subset of SQL used for managing
and manipulating data within existing database objects. The primary DML commands are:

SELECT: Used to retrieve data from one or more tables.

-- Select all columns from a table
SELECT * FROM table_name;

-- Select specific columns from a table
SELECT column1, column2
FROM table_name;

-- Select with a WHERE clause to filter records
SELECT column1, column2
FROM table_name
WHERE condition;

-- Select with ORDER BY to sort the results
SELECT column1, column2
FROM table_name
WHERE condition
ORDER BY column1 ASC;  -- or DESC for descending order

-- Select with JOIN to combine rows from two or more tables
SELECT a.column1, b.column2
FROM table1 a
JOIN table2 b ON a.common_field = b.common_field;

2)INSERT: Used to add new rows to a table.
  -- Insert a single row
INSERT INTO table_name (column1, column2, ...)
VALUES (value1, value2, ...);

-- Insert multiple rows
INSERT INTO table_name (column1, column2, ...)
VALUES (value1, value2, ...), (value3, value4, ...), ...;

-- Insert data from another table
INSERT INTO table_name (column1, column2, ...)
SELECT column1, column2, ...
FROM another_table
WHERE condition;

3)UPDATE: Used to modify existing data within a table.
-- Update specific rows
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

-- Update all rows
UPDATE table_name
SET column1 = value1, column2 = value2, ...;
4)DELETE: Used to remove rows from a table.

-- Delete specific rows
DELETE FROM table_name
WHERE condition;

-- Delete all rows
DELETE FROM table_name;
5) MERGE (also known as UPSERT): Used to perform insert, update, or delete operations based
  on whether a specified condition matches or not. This command is supported by some database systems like SQL Server and Oracle.

-- Example in SQL Server
MERGE INTO target_table AS target
USING source_table AS source
ON target.id = source.id
WHEN MATCHED THEN
    UPDATE SET target.column1 = source.column1, target.column2 = source.column2
WHEN NOT MATCHED THEN
    INSERT (column1, column2, ...)
    VALUES (source.column1, source.column2, ...);




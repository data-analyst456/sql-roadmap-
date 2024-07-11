Data Definition Language (DDL) techniques in SQL are used to define and manage all objects in a database.
These commands are responsible for the creation, modification, and deletion of database 
objects such as tables, indexes, views, and schemas. The primary DDL commands are:

CREATE: Used to create a new database object (table, index, view, schema, etc.)

-- Create a new table
CREATE TABLE table_name (
    column1 datatype constraint,
    column2 datatype constraint,
    ...
);

-- Create a new index
CREATE INDEX index_name
ON table_name (column_name);

-- Create a new view
CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;

2)ALTER: Used to modify an existing database object.
	
-- Add a new column to a table
ALTER TABLE table_name
ADD column_name datatype constraint;

-- Modify the datatype of an existing column
ALTER TABLE table_name
ALTER COLUMN column_name TYPE new_datatype;

-- Drop a column from a table
ALTER TABLE table_name
DROP COLUMN column_name;

-- Rename a column in a table
ALTER TABLE table_name
RENAME COLUMN old_column_name TO new_column_name;

-- Rename a table
ALTER TABLE old_table_name
RENAME TO new_table_name;

3)DROP: Used to delete an existing database object.
-- Drop a table
DROP TABLE table_name;

-- Drop an index
DROP INDEX index_name;

-- Drop a view
DROP VIEW view_name;

4)TRUNCATE: Used to remove all records from a table, but not its structure.

-- Truncate a table
TRUNCATE TABLE table_name;

5)COMMENT: Used to add comments to the database objects for documentation purposes.
-- Add a comment to a table
COMMENT ON TABLE table_name IS 'This is a table for storing user data';

-- Add a comment to a column
COMMENT ON COLUMN table_name.column_name IS 'This column stores the user ID';


6)-- Rename a table
ALTER TABLE old_table_name
RENAME TO new_table_name;

-- Rename an index
ALTER INDEX old_index_name
RENAME TO new_index_name;










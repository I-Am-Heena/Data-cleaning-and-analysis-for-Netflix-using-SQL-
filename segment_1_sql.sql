use netflix;
-- Database - Tables, Columns, Relationships --

-- Que.1-- Identify the tables in the dataset and their respective columns.

-- Table: netflix
-- Columns: show_id, type, title, director, country, date_added, release_year, rating, duration, listed_in

-- Que.2-- Determine the number of rows in each table within the schema.

SELECT COUNT(*) FROM netflix;
-- Returns the total number of rows in the "netflix" table.

-- Que.3-- Identify and handle any missing values in the dataset.

SELECT * FROM netflix WHERE director IS NULL;
-- We have checked the missing values ​​of all the coloum and there is no missing value.
--  Returns rows with missing director values.








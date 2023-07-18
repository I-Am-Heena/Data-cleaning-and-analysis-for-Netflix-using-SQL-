-- Co-occurrence Analysis --

-- Que.1 -- Identify the most common pairs of genres/categories that occur together in content.

SELECT * FROM(
SELECT distinct type, listed_in, duration, count(*) over (partition by type, listed_in, duration) AS co_occurence FROM netflix)t
WHERE co_occurence > 1
ORDER BY type, listed_in, duration;
-- This query identifies the most common pairs of genres/categories that occur together in content
-- by selecting distinct combinations of type, listed_in, and duration from the Netflix table and filtering
-- for combinations with a co-occurrence count greater than 1. The results are ordered accordingly.

-- Que.2 -- Analyse the relationship between genres/categories and content duration.

SELECT * FROM(
SELECT Distinct type, listed_in, count(*) OVER (PARTITION BY type, listed_in) AS co_occurence FROM netflix)t
WHERE co_occurence > 1
ORDER BY type, listed_in;
-- This query analyzes the relationship between genres/categories and content duration
-- by selecting distinct combinations of type and listed_in from the Netflix table and filtering
-- for combinations with a co-occurrence count greater than 1. The results are ordered accordingly.






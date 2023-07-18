-- International Expansion Analysis --

-- Que.1-- Identify the countries where Netflix has expanded its content offerings.

SELECT DISTINCT country
FROM netflix;
-- This query identifies the countries where Netflix has expanded its content offerings
-- by selecting distinct values from the "country" column in the Netflix table.

-- Que.2-- Analyse the distribution of content types in different countries.

SELECT country, type, COUNT(*) AS count
FROM netflix
GROUP BY country, type;
-- This query analyzes the distribution of content types in different countries
-- by counting the occurrences of each content type (e.g., movies, TV shows) within each country.
-- The results are grouped by country and type.

-- Que.3-- Investigate the relationship between content duration and country of production.

SELECT country, AVG(duration) AS average_duration
FROM netflix
GROUP BY country;
-- This query investigates the relationship between content duration and country of production
-- by calculating the average duration of content for each country in the Netflix dataset and grouping the results by country.




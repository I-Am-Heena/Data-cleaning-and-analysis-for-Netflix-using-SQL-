-- Rating Analysis--

-- Que.1 -- Investigate the distribution of ratings across different genres.

SELECT listed_in, rating, COUNT(*) AS rating_count
FROM netflix
GROUP BY listed_in, rating
ORDER BY rating_count desc;
--  This query investigates the distribution of ratings across different genres
-- by counting the occurrences of each rating within each genre and ordering them in descending order based on the rating count.

-- Que. 2 -- Analyse the relationship between ratings and content duration.

SELECT duration, listed_in, rating, count(*) AS rating_count
FROM netflix
GROUP BY listed_in, duration, rating
order by listed_in, duration, rating;
-- This query analyzes the relationship between ratings and content duration
-- by grouping the data based on genre/category, duration, and rating, and counting the occurrences of each combination.
-- The results are then ordered accordingly.

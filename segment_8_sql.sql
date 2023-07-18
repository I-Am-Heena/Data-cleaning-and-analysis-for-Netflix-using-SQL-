-- Recommendations for Content Strategy --

-- Que.1-- Based on the analysis, provide recommendations for the types of content Netflix should focus on producing.

SELECT listed_in, COUNT(*) AS Content_count
FROM netflix
GROUP BY listed_in
ORDER BY Content_count;
--  This query provides recommendations for the types of content Netflix should focus on producing
-- based on the count of content within each genre/category. The results are ordered by content count,
-- helping identify the genres/categories with the highest count as potential areas of focus.

-- Que.2-- Identify potential areas for expansion and growth based on the analysis of the dataset.

SELECT country, COUNT(*) AS count
FROM netflix
WHERE country IS NOT NULL
GROUP BY country
ORDER BY count DESC
LIMIT 10;
-- This query identifies potential areas for expansion and growth based on the count of
-- content from each country in the Netflix dataset. The results are ordered by count in
-- descending order and limited to the top 10 countries.

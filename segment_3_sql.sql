-- Genre and Category Analysis --

-- Que 1.-- Determine the unique genres and categories present in the dataset.

SELECT DISTINCT TYPE as genres, listed_in as categories
FROM netflix
group by TYPE,listed_in;
-- This query determines the unique genres and categories present in the dataset
-- by selecting distinct combinations of the "TYPE" column (genres) and the "listed_in" column (categories) from the Netflix table.

-- Que 2.--Calculate the percentage of movies and TV shows in each genre.

SELECT TYPE as genre,
       COUNT(*) AS total_count,
       (COUNT(CASE WHEN type = 'Movie' THEN 1 END) * 100.0 / COUNT(*)) AS movie_percentage,
       (COUNT(CASE WHEN type = 'TV Show' THEN 1 END) * 100.0 / COUNT(*)) AS tv_show_percentage
FROM netflix
GROUP BY genre;
-- This query calculates the percentage of movies and TV shows in each genre 
-- by counting the occurrences of each type (Movie or TV Show) within each genre and dividing it by the total count.
-- alter The results are grouped by genre.

-- Que 3.-- Identify the most popular genres/categories based on the number of productions.

SELECT listed_in AS genre_category,
	COUNT(*) AS production_count
FROM netflix GROUP BY listed_in ORDER BY production_count DESC;
-- This query identifies the most popular genres/categories based on the number of productions
-- by counting the occurrences of each genre/category in the Netflix dataset and ordering them in descending order.

-- Que 4.-- Calculate the cumulative sum of content duration within each genre.

SELECT TYPE AS genre, SUM(duration) AS cumulative_duration
FROM netflix
GROUP BY genre;
--  This query calculates the cumulative sum of content duration within each genre
-- by summing the duration for each genre in the Netflix dataset and grouping the results by genre.


-- Content Analysis --

-- Que 1.--	Analyse the distribution of content types (movies vs. TV shows) in the dataset.

SELECT type, COUNT(*) AS count FROM netflix GROUP BY type;
-- Counts the number of movies and TV shows and displays the distribution.

-- Que 2.-- Determine the top 10 countries with the highest number of productions on Netflix

SELECT country, COUNT(show_id) AS num_productions
FROM netflix
GROUP BY country
ORDER BY num_productions DESC
LIMIT 10;
-- This query retrieves the top 10 countries with the highest number of productions on Netflix.
-- Retrieves the country and production count, sorted in descending order, limited to the top 10 countries.

-- Que 3.-- Investigate the trend of content additions over the years.

SELECT * FROM (select distinct release_year, rating, count(*) over (partition by release_year, rating) as count from netflix)t
where count>30
order by release_year;
-- Counting occurrences of each release year and rating combination in Netflix.
-- Retrieves the release year and count of content additions, sorted by release year.

-- Que 4.-- Analyse the relationship between content duration and release year.

SELECT release_year, AVG(duration) AS average_duration
FROM netflix
GROUP BY release_year
ORDER BY release_year;
-- This query analyzes the relationship between content duration and release year in Netflix by 
-- calculating the average duration for each release year. Results are ordered by release year.

-- Que 5.--Identify the directors with the most content on Netflix.

SELECT director, COUNT(*) AS production_count
FROM netflix
GROUP BY director
ORDER BY production_count DESC
LIMIT 10;
-- This query identifies the top 10 directors with the most content on Netflix by counting the
-- number of productions for each director and ordering them in descending order.







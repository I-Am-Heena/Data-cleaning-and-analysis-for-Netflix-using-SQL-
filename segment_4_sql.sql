-- Release Date Analysis--

-- Que 1.-- Determine the distribution of content releases by month and year.

SELECT MONTH(STR_TO_DATE(date_added,'%m/%d/%Y')) AS month, YEAR(STR_TO_DATE(date_added,'%m/%d/%Y')) AS year, COUNT(*) AS count
FROM netflix
WHERE date_added IS NOT NULL
GROUP BY month, year;
--  This query determines the distribution of content releases by month and year
-- by extracting the month and year from the "date_added" column and grouping the results accordingly.

-- Que 2.-- Analyse the seasonal patterns in content releases.

SELECT MONTH(STR_TO_DATE(date_added,'%m/%d/%Y')) AS month, YEAR(STR_TO_DATE(date_added,'%m/%d/%Y')) AS year, COUNT(*) AS count
FROM netflix
WHERE date_added IS NOT NULL
GROUP BY month, year
ORDER BY year, month;
-- This query analyzes the seasonal patterns in content releases
-- by counting the number of content releases for each month and year, and ordering the results by year and month.

-- Que 3.-- Identify the months and years with the highest number of releases.

SELECT MONTH(STR_TO_DATE(date_added,'%m/%d/%Y')) AS month, YEAR(STR_TO_DATE(date_added,'%m/%d/%Y')) AS year, COUNT(*) AS Highest_release
FROM netflix
WHERE date_added IS NOT NULL
GROUP BY month, year
ORDER BY Highest_release DESC;
-- This query identifies the months and years with the highest number of releases
-- by counting the number of releases for each month and year, and ordering the results in descending order based on the highest release count.


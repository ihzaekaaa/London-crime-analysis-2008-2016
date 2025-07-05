SELECT
  major_category,
  month,
  year,
  SUM(value) AS total_cases
FROM `bigquery-public-data.london_crime.crime_by_lsoa`
WHERE year >= 2012
GROUP BY major_category, month, year
ORDER BY year, month, major_category;
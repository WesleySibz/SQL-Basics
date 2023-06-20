SELECT DISTINCT city
  FROM station
 WHERE LOWER(LEFT(city,1)) IN ('a','e','i','o','u');
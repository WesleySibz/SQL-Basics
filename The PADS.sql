SELECT CONCAT(name,'(',SUBSTRING(occupation,1,1),')') AS name
  FROM occupations
 ORDER BY name;

SELECT CONCAT('There are a total of ', COUNT(occupation),' ',LOWER(occupation),'s.') as totals
  FROM occupations
 GROUP BY occupation
 ORDER BY totals;
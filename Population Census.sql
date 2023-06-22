SELECT SUM(city.population)
  FROM country
  LEFT JOIN city ON country.code = city.countrycode
 WHERE country.continent = 'Asia';
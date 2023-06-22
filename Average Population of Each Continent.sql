SELECT cy.continent,
       FLOOR(AVG(c.population)) AS avg_pop
  FROM city c
 INNER JOIN country cy ON c.countrycode = cy.code
 GROUP BY cy.continent;
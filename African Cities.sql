SELECT c.name
  FROM city c
  INNER JOIN country cy ON c.countrycode = cy.code AND continent = 'Africa';
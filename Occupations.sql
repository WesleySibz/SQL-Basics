SELECT
    CASE WHEN occupation = 'Doctor' THEN name ELSE NULL
              END AS Doctor,
    CASE WHEN occupation = 'Professor' THEN name ELSE NULL
              END AS Professor,
    CASE WHEN occupation = 'Singer' THEN name ELSE NULL
              END AS Singer,
    CASE WHEN occupation = 'Actor' THEN name ELSE NULL
              END AS Actor
FROM occupations;
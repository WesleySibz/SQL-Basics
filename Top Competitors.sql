SELECT h.hacker_id, h.name
  FROM submissions s
  JOIN challenges c
    ON s.challenge_id = c.challenge_id
  JOIN difficulty d
    ON c.difficulty_level = d.difficulty_level AND
       s.score = d.score
  JOIN hackers h
    ON s.hacker_id = h.hacker_id
 GROUP BY h.hacker_id, h.name
HAVING COUNT(s.hacker_id) > 1
 ORDER BY COUNT(s.hacker_id) DESC,
          s.hacker_id ASC;
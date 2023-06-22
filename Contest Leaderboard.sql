SELECT h.hacker_id, h.name, SUM(MAX_SCORE.t1) as total_score
  FROM hackers h
 INNER JOIN (SELECT s.hacker_id, MAX(s.score) AS t1  
               FROM Submissions s
              GROUP BY s.challenge_id, s.hacker_id
             HAVING t1 > 0) AS MAX_SCORE
   ON h.hacker_id = MAX_SCORE.hacker_id
GROUP BY h.hacker_id, h.name
ORDER BY total_score DESC, hacker_id ASC;
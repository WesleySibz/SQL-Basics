SELECT c.hacker_id, h.name,
       COUNT(c.hacker_id) AS total_count
  FROM hackers h
 INNER JOIN challenges c  USING(hacker_id)
 GROUP BY c.hacker_id, h.name
HAVING total_count = (SELECT COUNT(t1.challenge_id) AS max_count
                        FROM challenges t1
                       GROUP BY t1.hacker_id
                       ORDER BY max_count DESC
                       LIMIT 1 ) OR
       total_count IN (SELECT DISTINCT other_counts
                         FROM (SELECT h2.hacker_id, h2.name,
                                      COUNT(c2.challenge_id) AS other_counts
                                 FROM hackers h2
                                INNER JOIN challenges c2 USING(hacker_id)
                                GROUP BY h2.hacker_id, h2.name) temp2
                        GROUP BY other_counts
                        HAVING COUNT(other_counts) = 1)
  ORDER BY total_count DESC,
           h.hacker_id;
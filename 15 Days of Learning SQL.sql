SELECT submission_date,
      (SELECT COUNT(DISTINCT hacker_id)
         FROM Submissions AS SUB2
        WHERE SUB2.submission_date = SUB1.submission_date AND
              (SELECT COUNT(DISTINCT submission_date)
                 FROM Submissions AS SUB3
                WHERE (SUB3.hacker_id = SUB2.hacker_id) AND
                      (SUB3.submission_date < SUB1.submission_date))
              = DATEDIFF(SUB1.submission_date, '2016-03-01' )) AS tot_unique_h,
      (SELECT hacker_id
         FROM Submissions SUB4
        WHERE SUB4.submission_date = SUB1.submission_date
        GROUP BY hacker_id
        ORDER BY COUNT(submission_id) DESC, hacker_id LIMIT 1) AS HID,
      (SELECT name
         FROM Hackers
        WHERE hacker_id = HID) name
  FROM (SELECT DISTINCT(submission_date)
          FROM Submissions) AS SUB1;
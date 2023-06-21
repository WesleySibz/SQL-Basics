SELECT (salary * months) AS max_earnings, COUNT(*) AS employee_count
FROM employee
GROUP BY max_earnings
HAVING max_earnings = MAX(salary * months)
ORDER BY max_earnings DESC
LIMIT 1;
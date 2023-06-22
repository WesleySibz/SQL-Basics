/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/
SELECT 
CASE
WHEN (A+B>C) AND (A+C>B) AND (B+C>A) THEN
CASE
WHEN (A=B) AND (B=C) THEN 'Equilateral'
WHEN (A=B) OR (B=C) OR (A=C) THEN 'Isosceles'
ELSE 'Scalene'
END 
ELSE 'Not a triangle'
END
FROM Triangles;
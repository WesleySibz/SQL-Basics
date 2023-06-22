/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/
Select 
CASE
when A + B <= C or A + C <= B or B + C <= A then "Not A Triangle"
when A = B and B = C then "Equilateral"
when A = B or A = C or B = C then "Isosceles"
else "Scalene"
end as triangle_sides
from TRIANGLES
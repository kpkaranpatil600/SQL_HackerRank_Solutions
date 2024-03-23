SELECT
CASE
WHEN (A = B AND A = C) then 'Equilateral'

WHEN ((A = B AND A != C) OR (A = C AND A != B) OR  (B = C AND C != A))
      AND(A + B > C AND A + C > b AND B + C > A) then 'Isosceles'

WHEN ((A != B AND A != C) AND (A + B > C AND A + C > b AND B + C > A)) then 'Scalene'

Else 'Not A Triangle' End AS Type

FROM TRIANGLES;

----------------------------------------------------------------------------------------

SELECT CASE WHEN (A+B>C) AND (B+C>A) AND (C+A>B) THEN
                CASE WHEN A=B AND B=C THEN 'Equilateral'
                     WHEN A=B OR B=C OR C=A THEN 'Isosceles'
                     ELSE 'Scalene'
                END
             ELSE 'Not A Triangle'
             END AS TYPE_OF_TRIANGLE
FROM TRIANGLES;

---------------------------------------------------------------------------

SELECT
CASE WHEN A+B <= C OR B+C <= A OR A+C <= B THEN 'Not A Triangle'
     WHEN A=B AND B=C AND C=A THEN 'Equilateral'
     WHEN A=B OR B=C OR C=A THEN 'Isosceles'
ELSE 'Scalene' END AS Type
FROM TRIANGLES

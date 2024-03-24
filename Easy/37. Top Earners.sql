WITH TEMP AS
(SELECT (salary * months) AS sn,
        Rank() OVER(ORDER BY (salary * months) DESC) AS rn
FROM Employee)

SELECT sn, COUNT(sn)
FROM TEMP
WHERE rn = (SELECT MIN(rn) FROM TEMP)
GROUP BY sn;

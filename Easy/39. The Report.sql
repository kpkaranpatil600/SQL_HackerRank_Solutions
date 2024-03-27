SELECT
    CASE WHEN Marks > 70 THEN Name
    ELSE 'NULL' END AS Name,
    g.Grade, Marks
FROM Students AS s

INNER JOIN Grades AS g
ON s.Marks >= g.Min_Mark AND s.Marks <= g.Max_Mark
ORDER BY Grade DESC, s.NAME;

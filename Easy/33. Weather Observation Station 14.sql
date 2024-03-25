SELECT TOP 1 CAST(LAT_N AS NUMERIC(16,4))
FROM STATION
WHERE LAT_N < 137.2345
ORDER BY LAT_N DESC
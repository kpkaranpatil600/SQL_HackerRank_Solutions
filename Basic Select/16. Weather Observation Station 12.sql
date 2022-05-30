/*  
# Author: Karan Patil

Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates:

Field   | type

ID      | NUMBER
CITY    | VARCHAR2(21)
STATE   | VARCHAR2(2)
LAT_N   | NUMBER
LONG_N  | NUMBER
*/  
    
SELECT DISTINCT(CITY) FROM STATION
WHERE (CITY NOT LIKE '[a,e,i,o,u]%' AND CITY NOT LIKE '%[a,e,i,o,u]');
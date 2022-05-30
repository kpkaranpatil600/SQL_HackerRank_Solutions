/*  
# Author: Karan Patil

Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
The STATION table is described as follows:

Field   | type

ID      | NUMBER
CITY    | VARCHAR2(21)
STATE   | VARCHAR2(2)
LAT_N   | NUMBER
LONG_N  | NUMBER
*/  
    
SELECT DISTINCT(CITY) FROM STATION
WHERE CITY NOT LIKE '[a,e,i,o,u]%[a,e,i,o,u]';
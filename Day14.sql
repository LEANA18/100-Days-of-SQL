#Basic Select
#Weather Observation Station 8

Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters.
Your result cannot contain duplicates.


Field     Type
*****     ****
ID        NUMBER
CITY      VARCHAR2(21)
STATE     VARCHAR2(2)
LAT_N     NUMBER
LONG_W     NUMBER

where LAT_N is the northern latitude and LONG_W is the western longitude.

SQL Query
*********
SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(CITY,1) IN ('a','e','i','o','u') AND RIGHT(CITY,1) IN ('a','e','i','o','u');

Output
******
Acme 
Aguanga 
Alba 
Aliso Viejo 
Alpine 
Amazonia 
Amo 
Andersonville 
Archie 
Arispe 
Arkadelphia 
Atlantic Mine 
East China 
East Irvine 
Eastlake 
Eleele 
Elm Grove 
Eriline 
Ermine 
Eskridge 
Eufaula 
Oconee 
Ojai 
Osborne 
Oshtemo 
Ozona 
Upperco 
Urbana

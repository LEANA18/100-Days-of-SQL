#Basic Select
#Weather Observation Station 6

Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION.
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
********
SELECT DISTINCT CITY 
FROM STATION 
WHERE LEFT(CITY,1) IN ('a','e','i','o','u');

Output
******
Acme 
Addison 
Agency 
Aguanga 
Alanson 
Alba 
Albany 
Albion 
Algonac 
Aliso Viejo 
Allerton 
Alpine 
Alton 
Amazonia 
Amo 
Andersonville 
Andover 
Anthony 
Archie 
Arispe 
Arkadelphia 
Arlington 
Arrowsmith 
Athens 
Atlantic Mine 
Auburn 
East China 
East Haddam 
East Irvine 
Eastlake 
Edgewater 
Effingham 
Eleele 
Elkton 
Elm Grove 
Emmett 
Equality 
Eriline 
Ermine 
Eros 
Eskridge 
Esmond 
Eufaula 
Eureka Springs 
Eustis 
Everton 
Irvington 
Oakfield 
Oconee 
Odin 
Ojai 
Olmitz 
Onaway 
Orange City 
Orange Park 
Osage City 
Osborne 
Oshtemo 
Ottertail 
Ozona 
Udall 
Ukiah 
Union Star 
Upperco 
Urbana

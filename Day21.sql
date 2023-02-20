#Basic Select
#Weather Observation Station 12

Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.

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
WHERE LEFT(CITY,1) NOT IN ('a','e','i','o','u') AND RIGHT(CITY,1) NOT IN ('a','e','i','o','u');

Output
******
Baker 
Baldwin 
Bass Harbor 
Beaufort 
Beaver Island 
Benedict 
Bennington 
Berryton 
Beverly 
Bison 
Blue River 
Bowdon 
Bowdon Junction 
Bridgeport 
Bridgton 
Brighton 
Brilliant 
Bristol 
Brownstown 
Buffalo Creek 
Bullhead City 
Busby 
Byron 
Calhoun 
Cannonsburg 
Canton 
Carlock 
Carlos 
Carver 
Centertown 
Channing 
Cherry 
Chester 
Cheswold 
Chignik Lagoon 
Childs 
Church Creek 
Clancy 
Clarkston 
Clifton 
Climax 
Clipper Mills 
Clopton 
Clovis 
Clutier 
Coalgood 
Coaling 
Cobalt 
Coldwater 
Columbus 
Compton 
Corcoran 
Cowgill 
Cranks 
Crescent City 
Cromwell 
Culdesac 
Decatur 
Deep River 
Deerfield 
Del Mar 
Delavan 
Delray Beach 
Dent 
Dryden 
Ducor 
Dumont 
Fairview 
Farmington 
Firebrick 
Five Points 
Flowood 
Forest 
Forest Lakes 
Fort Atkinson 
Fort Lupton 
Frankfort Heights 

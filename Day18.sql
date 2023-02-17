#Basic Select
#Weather Observation Station 11

Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

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
WHERE LEFT(CITY,1) NOT IN ('a','e','i','o','u') OR RIGHT(CITY,1) NOT IN ('a','e','i','o','u');

Output
******
Addison 
Agency 
Alanson 
Albany 
Albion 
Algonac 
Allerton 
Alton 
Andover 
Anthony 
Arlington 
Arrowsmith 
Athens 
Auburn 
Baileyville 
Bainbridge 
Baker 
Baldwin 
Barrigada 
Bass Harbor 
Baton Rouge 
Bayville 
Beaufort 
Beaver Island 
Bellevue 
Benedict 
Bennington 
Bentonville 
Berryton 
Bertha 
Beverly 
Biggsville 
Bison 
Blue River 
Bono 
Bowdon 
Bowdon Junction 
Bridgeport 
Bridgton 
Brighton 
Brilliant 
Bristol 
Brownsdale 
Brownstown 
Buffalo Creek 
Bullhead City 
Busby 
Byron 
Cahone 
Calhoun 
Calpine 
Cannonsburg 
Canton 
Cape Girardeau 
Carlock 
Carlos 
Carver 
Cascade 
Casco 
Caseville 
Centertown 
Channing 
Chelsea 
Cherry 
Chester 
Cheswold 
Chignik Lagoon 
Childs 
Chilhowee 
Chokio 
Church Creek 
Clancy 
Clarkdale 
Clarkston 
Clifton 
Climax 
Clio 
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
Corriganville 
Cowgill 
Crane Lake 
Cranks 
Crescent City 
Cromwell 
Crouseville 
Cuba 
Culdesac 
Curdsville 
Dale 
Daleville 
De Tour Village 
Decatur 
Deep River 
Deerfield 
Del Mar 
Delano 
Delavan 
Delray Beach 
Delta 
Dent 
Dixie 
Dorrance 
Dryden 
Ducor 
Dumont 
Dundee 
Dupo 
East Haddam 
Edgewater 
Effingham 
Elkton 
Emmett 
Equality 
Eros 
Esmond 
Eureka Springs 
Eustis 
Everton 
Fairview 
Farmington 
Firebrick 
Five Points 
Flowood 
Forest 
Forest Lakes 
Fort Atkinson 
Fort Lupton 
Fort Meade 
Frankfort Heights 

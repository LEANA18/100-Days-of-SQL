

Query the NAME field for all American cities in the CITY table with populations larger than 120000. 
The CountryCode for America is USA.

The CITY table is described as follows:





SQL Query
********
SELECT CITY.NAME FROM CITY WHERE CITY.POPULATION>120000 AND CITY.COUNTRYCODE="USA"

Output
******
Scottsdale
Corona
Concord
Cedar Rapids

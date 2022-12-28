#Basic Select
#Revising Select Query II

Query the NAME field for all American cities in the CITY table with populations larger than 120000. 
The CountryCode for America is USA.

The CITY table is described as follows:

Field              Type
******             ****
ID                 NUMBER
NAME               VARCHAR2(17)
COUNTRYCODE        VARCHAR2(3)
DISTRICT           VARCHAR2(20)
POPULATION         NUMBER

SQL Query
********
SELECT CITY.NAME FROM CITY WHERE CITY.POPULATION>120000 AND CITY.COUNTRYCODE="USA"

Output
******
Scottsdale
Corona
Concord
Cedar Rapids

#Basic Select
#Select By ID

Query all columns for a city in CITY with the ID 1661.

The CITY table is described as follows:

Field              Type
******             ****
ID                 NUMBER
NAME               VARCHAR2(17)
COUNTRYCODE        VARCHAR2(3)
DISTRICT           VARCHAR2(20)
POPULATION         NUMBER

SQL Query
*********
SELECT * FROM CITY WHERE CITY.ID=1661;

Output
******
1661 Sayama JPN Saitama 162472

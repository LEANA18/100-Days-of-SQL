#Basic Select
#Japenese Cities Attributes

Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.

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
SELECT * FROM CITY WHERE CITY.COUNTRYCODE='JPN';

Output
******
1613 Neyagawa JPN Osaka 257315 
1630 Ageo JPN Saitama 209442 
1661 Sayama JPN Saitama 162472 
1681 Omuta JPN Fukuoka 142889 
1739 Tokuyama JPN Yamaguchi 107078

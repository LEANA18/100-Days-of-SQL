#Basic Select
#Higher than 75 Marks

Query the Name of any student in STUDENTS who scored higher than 75 Marks. 
Order your output by the last three characters of each name.
If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), 
secondary sort them by ascending ID.

Column       Type
*******      ****
ID           Integer
Name         String
Marks        Integer

The Name column only contains uppercase (A-Z) and lowercase (a-z) letters.

SQL Query
*********
SELECT Name
FROM STUDENTS 
WHERE Marks>75
ORDER BY SUBSTR(Name,-3,3),ID ASC;

Output
******
Stuart 
Kristeen 
Christene 
Amina 
Aamina 
Priya 
Heraldo 
Scarlet 
Julia 
Salma 
Britney 
Priyanka 
Samantha 
Vivek 
Belvet 
Devil 
Evil

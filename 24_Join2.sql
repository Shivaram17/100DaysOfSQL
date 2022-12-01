/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
SELECT C.NAME FROM CITY C 
    JOIN COUNTRY O ON C.COUNTRYCODE = O.CODE
    WHERE O.CONTINENT = 'Africa';

SELECT DISTINCT CITY FROM STATION S
WHERE lower(substr(CITY, -1, 1)) in ('a', 'e', 'i', 'o', 'u');

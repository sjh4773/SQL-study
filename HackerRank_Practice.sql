/*
Japan Population

Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
*/


SELECT sum(population)
FROM city
WHERE countrycode = 'JPN'


/*
Weather Observation Station 2

Query the following two values from the STATION table:

The sum of all values in LAT_N rounded to a scale of  decimal places.
The sum of all values in LONG_W rounded to a scale of  decimal places.


where LAT_N is the northern latitude and LONG_W is the western longitude.
*/

SELECT ROUND(SUM(LAT_N),2) AS lat, ROUND(SUM(LONG_W),2) AS lon
FROM STATION



/*
Weather Observation Station 18


Consider  P1(a, b) and P2(c, d)  to be two points on a 2D plane.

 a happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
 b happens to equal the minimum value in Western Longitude (LONG_W in STATION).
 c happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
 d happens to equal the maximum value in Western Longitude (LONG_W in STATION).
Query the Manhattan Distance between points  and  and round it to a scale of  decimal places.
*/


SELECT ROUND(ABS(MAX(LAT_N) - MIN(LAT_N)) + ABS(MAX(LONG_W) - MIN(LONG_W)),4)
FROM STATION

/*

*** New Companies

Founder -> Lead Manager -> Senior Manager -> Manager -> Employee

Amber's conglomerate corporation just acquired some new companies. Each of the companies follows this hierarchy:

Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.

Note:

The tables may contain duplicate records.
The company_code is string, so the sorting should not be numeric. For example, if the company_codes are C_1, C_2, and C_10, then the ascending company_codes will be C_1, C_10, and C_2.
*/

-- 무조건 복습할 것!!!
-- LEFT에는 데이터가 있는데 RIGHT에는 데이터가 없을 수 있다! -> 이러한 상황을 항상 고려해야함
SELECT C.company_code
     , C.founder
     , COUNT(DISTINCT LM.lead_manager_code)
     , COUNT(DISTINCT SM.senior_manager_code)
     , COUNT(DISTINCT M.manager_code)
     , COUNT(DISTINCT E.employee_code)
FROM Company c
     LEFT JOIN Lead_Manager LM ON C.company_code = LM.company_code
     LEFT JOIN Senior_Manager SM ON LM.lead_manager_code = SM.lead_manager_code
     LEFT JOIN Manager M ON SM.senior_manager_code = M.senior_manager_code
     LEFT JOIN Employee E ON M.manager_code = E.manager_code
GROUP BY


-- WHERE절 서브쿼리를 이용한 풀이

SELECT months * salary AS earnings
     , COUNT(*)
FROM employee
-- highest earning
WHERE months * salary = (SELECT MAX(months*salary) FROM employee)
GROUP BY earnings

-- HAVING절 서브쿼리를 이용한 풀이
SELECT months * salary AS earnings
     , COUNT(*)
FROM employee
GROUP BY earnings
HAVING earnings = (SELECT MAX(months*salary) FROM employee)
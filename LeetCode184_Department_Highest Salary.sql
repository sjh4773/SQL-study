-- 다시 풀어볼것!!!!
SELECT d.name AS department
     , e.name AS employee
     , e.salary
FROM employee
     INNER JOIN(
        -- 부서에서 가장 많이 벌 때 그 임금과 부서 id
        SELECT departmentid, MAX(salary) AS max_salary
        FROM employee
        GROUP BY departmentid
         ) AS dh ON e.departmentid = dh.departmentid
                 AND e.salary = dh.max_salary
        INNER JOIN department AS d ON d.id = e.departmentid

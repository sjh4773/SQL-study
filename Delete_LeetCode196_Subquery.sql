-- 서브쿼리

DELETE FROM Person
WHERE Id NOT IN (Write a subquery which only contains Ids should be deleted);

-- From절 서브쿼리

crimes

incident_id  |  week    |  date      |  type
3001              2       2020-01-05     A
3002              2       2020-01-05     A
3003              2       2020-01-06     B
3004              2       2020-01-07     B
3005              2       2020-01-07     A
3006              2       2020-01-07     A
3007              2       2020-01-08     A
3008              2       2020-01-09     A
3009              2       2020-01-10     A
...               ...     ...            ...


SELECT daily_stats.week
     , AVG(daily_stats.incidents_daily)
FROM (
       SELECT week
            , date
            , COUNT(incidents_id) AS incidents_daily
       FROM crimes
       GROUP BY week, date
     ) daily_stats
GROUP BY daily_stats.week



-- WHERE 절 서브쿼리

SELECT *
FROM crimes
WHERE date = (SELECT MIN(date) FROM crimes)


-- 최근 5일동안 발생했던 레코드 확인
SELECT *
FROM crimes
WHERE date IN (SELECT date FROM crimes ORDER BY date DESC LIMIT 5)




-- 정답
# Write your MySQL query statement below

DELETE
FROM Person
WHERE Id NOT IN (
SELECT sub.min_id
FROM(
SELECT Email, MIN(Id) AS min_id
FROM Person
GROUP BY Email
) sub )
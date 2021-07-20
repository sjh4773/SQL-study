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


-- [심화] DELETE에 JOIN 활용하기

https://www.mysqltutorial.org/mysql-delete-join/

DELETE t1, t2
FROM t1
INNER JOIN t2 ON t1.id = t2.ref
WHERE t1.id = 1;

-- 원래 데이터
t1     t2               

Id     id ref
1      A  1
2      B  2
3      C  3

-- DELETE 적용
t1     t2

Id     id ref
2      B  2
3      C  3

DELETE p1
SELECT
FROM Person p1
     INNER JOIN Person p2 ON p1.Email = p2.Email
WHERE p1.Id > p2.Id


/*
쿼리는 p1.Id 가 p2.Id 보다 큰 경우,
그러니까 같은 이메일을 가지지만 Id가 다른 데이터보다 큰 로우들을 찾아 삭제합니다.

중요한 포인트는 같은 이메일이 반복되면, 제일 작은 Id 이외의 다른 Id를 찾아주고 이 값을 삭제해야하는 것입니다. 

테이블을 Email을 기준으로 조인하게 된다면 아래처럼 보여지는데, 

p1.Id    p1.Email                          p2.Id    p2.Email
1            john@example.com   1            john@example.com
1            john@example.com   3            john@example.com
2            bob@example.com    2            bob@example.com
3            john@example.com   1            john@example.com
3           john@example.com    3            john@example.com

위에 p1와 p2를 조인한 결과에서 WHERE p1.Id > p2.Id 로 필터링을 하게 되면 아래와 같은 결과가 나오고,

p1.Id    p1.Email                          p2.Id    p2.Email
3            john@example.com   1            john@example.com 

DELETE는 p1을 기준으로 하고 있기 때문에 Person 테이블에서 Id가 3번인 데이터를 찾아 지웁니다.
*/
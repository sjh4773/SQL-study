-- LeatCode - Rising Temperature 문제
-- SELF JOIN -> AS 필수!
-- id 기준 X

/*
SELECT today.id AS Id
FROM Weather AS today
    INNER JOIN Weather AS yesterday ON yesterday.id + 1 = today.id
WHERE today.temperature > yesterday.temperature
*/

MySQL 시간 더하기, 빼기

- DATE_ADD(기준날짜, INTERVAL)
SELECT DATE_ADD(NOW(), INTERBAL 1 SECOND)
SELECT DATE_ADD(NOW(), INTERBAL 1 MINUTE)
SELECT DATE_ADD(NOW(), INTERBAL 1 HOUR)
SELECT DATE_ADD(NOW(), INTERBAL 1 DAY)
SELECT DATE_ADD(NOW(), INTERBAL 1 MONTH)
SELECT DATE_ADD(NOW(), INTERBAL 1 YEAR)
SELECT DATE_ADD(NOW(), INTERBAL -1 YEAR)

- DATE_SUB(기준날짜, INTERVAL)
SELECT DATE_SUB(NOW(), INTERVAL 1 SECOND)


-- DATE_ADD함수 사용
-- yesterday에 1을 더해 today를 만들어준다.

SELECT today.id AS Id
FROM Weather AS today
    INNER JOIN Weather AS yesterday ON DATE_ADD(yesterday.recordDate, INTERVAL 1 DAY) = today.recordDate
WHERE today.temperature > yesterday.temperature
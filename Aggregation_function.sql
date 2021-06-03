-- products에 있는 행들, 즉 record의 개수를 세어준다.
SELECT COUNT(*)
FROM Products

/*
COUNT

id name visits
1   A   1
2   A   2
3   B   3
4   C   5
5 NULL NULL
*/


-- 내가 가진 모든 record 값들을 세어준다.
SELECT COUNT(*) FROM sample
-> 5

-- NULL이 포함되어 있을 경우
-- NULL을 제외한 record 개수 출력
SELECT COUNT(Name) FROM sample
-> 4

-- 중복값 제거
SELECT COUNT(DISTINCT Name)
FROM sample
-> 3

SELECT AVG(Visits) FROM sample
-> (1+2+3+5) / 4 = 2.75

SELECT SUM(Visits)/COUNT(*)
FROM sample
-> (1+2+3+5)/5 = 2.2

-- 최댓값
SELECT MAX(Visits)
FROM sample

-- 최솟값
SELECT MIN(Visits)
FROM sample
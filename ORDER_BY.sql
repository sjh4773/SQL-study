-- 데이터 정렬하기
-- 순서 SELECT -> FROM -> WHERE -> ORDER BY
-- ASC 오름차순, DESC 내림차순
-- ORDER BY -> ASC default

SELECT *
FROM Customers
WHERE
ORDER BY customerid DESC

-- 응용
-- 가격을 기준으로 내림차순
-- WHERE 을 통해 조건 추가

SELECT *
FROM Products
WHERE price >= 20
ORDER BY price DESC

-- LIMIT 조건을 통해 가장 큰 값 OR 작은 값을 볼 수 있다.

-- 가장 비싼 가격
SELECT *
FROM Products
ORDER BY price DESC
LIMIT 1

-- 가장 싼 가격
SELECT *
FROM Products
ORDER BY price ASC
LIMIT 1

-- 상위 3개 출력

SELECT *
FROM Products
ORDER BY price ASC
LIMIT 3
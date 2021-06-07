-- CASE 조건문
-- 카테고리 아이디가 1일때는 음료라고 한다
-- 2번일때는 조미료라고 한다.
-- 나머지는 기타라고 한다.
-- categoryName --> CASE 문으로 만든 새로운 column

SELECT CASE
            WHEN categoryid = 1 THEN '음료'
            WHEN categoryid = 2 THEN '조미료'
            ELSE '기타'
       END AS 'categoryName', *
FROM Products


-- 두 가지 이상 조건을 줄 때 논리 연산자를 묶어서 Combination

SELECT CASE
            WHEN categoryid = 1 AND supplierID = 1 THEN '음료'
            WHEN categoryid = 2 THEN '조미료'
            ELSE '기타'
       END AS 'categoryName', *
FROM Products


-- CASE를 이용해 새로운 column을 만들어주고
-- 그 column을 기준으로 GROUP BY 가능
SELECT CASE
            WHEN categoryid = 1 THEN '음료'
            WHEN categoryid = 2 THEN '소스'
            ELSE '이외'
       END AS 'new_category', AVG(price)
FROM Products
GROUP BY new_Category



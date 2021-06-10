-- 집합연산 UNION
-- 두 테이블을 합칠 때 중복값들을 없앤 값들을 반환함

-- Products 테이블에서 Price가 10이하 200이상인 상품들만 출력하세요

SELECT *
FROM Products
WHERE price <= 5
OR price >= 200

-- UNION 예시
-- 위의 테이블과 아래 테이블을 붙여줌
-- 중복되는 행이 없으므로 UNION ALL 결과와 같다.

SELECT *
FROM Products
WHERE price <= 5

UNION

SELECT *
FROM Products
WHERE price >= 200

-- 고객 정보는 있고 주문 정보가 없을 때, 주문 정보는 있지만 고객 정보가 없을 때
-- 위, 아래 테이블들을 모두 묶어준다.
-- A파트와 B파트를 모두 보고 싶을 때 사용한다.

SELECT *
FROM Customers
     LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID

UNION

SELECT *
FROM Customers
     RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID

-- UNION ALL
-- 중복되는 데이터를 포함한다.

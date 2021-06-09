-- 왼쪽 테이블을 기준으로 JOIN
-- Users 테이블이 기준이 된다.
-- 교집합이 없는 컬럼 또한 출력이 된다.
SELECT *
FROM Users
     LEFT JOIN Oredrs ON Users.Id = Orders.userId

-- INNER JOIN 같은 경우는 교집합이 있는 컬럼만 출력
SELECT *
FROM Customers
     INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID


-- 한번도 주문하지 않은 고객 출력
SELECT *
FROM Customers
     LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE OrderID IS NULL

-- RIGHT JOIN
-- LEFT JOIN과는 달리 Orders 테이블이 기준이 된다.
SELECT *
FROM Users
     RIGHT JOIN Orders ON Users.Id = Orders.userId


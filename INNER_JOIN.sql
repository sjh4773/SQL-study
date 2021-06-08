-- JOIN : 관련성이 있는 2개 이상의 table들을 연결시켜서 흩어져 있는 테이블을 한번에 가져오기 위한 방법

-- INNER JOIN 할 때
-- EX) Users, Orders 테이블이 있을 때 SELECT * FROM Users, Orders를 , 이어서 같이 쓰게 되면
-- Cartesian Product를 해서 Users와 Orders로 만들 수 있는 모든 경우의 수를 다 만든다.


-- 필요한 정보들만 남게 됌
SELECT *
FROM Users, Orders
WHERE Users.Id = Orders.userId


-- OLd
SELECT *
FROM Users, Orders
WHERE Users.Id = Orders.userId

-- New
SELECT *
FROM Users
     INNER JOIN Orders ON User.Id = Orders.userId

-- INNER JOIN일 경우 양쪽 테이블에 모두 정보가 있을 때 정보가 출력이 된다.
-- 여러개의 테이블 연결 가능
SELECT *
FROM Orders
     INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
     INNER JOIN Shippers ON Orders.ShipperID = Shippers.SHipperID

-- JOIN , KEY로 사용해야하는 컬럼들 간에 이름이 다를 수 있다.
-- 필요 --> ERD : 테이블 간에 어떤 관게를 가지고 있는지 도식화
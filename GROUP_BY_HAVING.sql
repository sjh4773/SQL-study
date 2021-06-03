SELECT SupplierID
     , Categoryid
     , AVG(Price)
FROM Products
GROUP BY SupplierID, Categoryid

-- AVG(Price) 기준으로 sorting

SELECT SupplierID
     , Categoryid
     , AVG(Price)
FROM Products
GROUP BY SupplierID, Categoryid
ORDER BY AVG(Price) DESC

-- GROUP BY 내에서 AVG(Price) 100 이상인 것을 출력하고 싶을 때

SELECT SupplierID
     , CategoryID
     , AVG(Priec)
FROM Products
GROUP BY SupplierID, CategoryID
HAVING AVG(Price) >= 100

-- 다른 이름으로 변경가능

SELECT SupplierID
     , CategoryID
     , AVG(Priec) AS avg_price
FROM Products
GROUP BY SupplierID, CategoryID
HAVING avg_price >= 100
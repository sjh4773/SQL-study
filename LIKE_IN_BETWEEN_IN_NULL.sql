SELECT *
FROM Customers
WHERE country LIKE 'Br%'

-- country라는 컬럼이 들어있는 값이 'Br'로 시작하는 값을 찾고싶다

-- % 뒤에 무엇이든 들어가도 상관이 없다라는 의미.

SELECT *
FROM Customers
WHERE country IN ('Germany', 'France')

-- France를 Country로 가진 사람과 Germany를 Country로 가진 사람을 같이 보고싶다.
-- WHERE country = 'Germany' OR country = 'France' 와 같다.


SELECT *
FROM Customers
WHERE CustomerID BETWEEN 3 AND 5
-- WHERE CustomerID >=3 AND CustomerID <=5

-- 테이블 내에 데이터가 입력되지 않는 경우가 있다
-- 이와 같은 경우 IS NULL 사용

SELECT *
FROM Customers
WHERE CustomerID IS NULL
-- NULL, NaN (Not a Number)
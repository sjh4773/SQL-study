SELECT *
FROM Customers
WHERE country LIKE '%r%'

-- 이럴 때에는 앞이나 뒤에 어떤 문자가 들어가도 혹은 안들어가도 괜찮으니까
-- 'r'문자가 하나라도 들어가 있으면 결과를 출력하라.

SELECT *
FROM Customers
WHERE country LIKE 'Brazil'

-- % 기호가 없기 때문에 country 컬럼이 정확히 브라질을 가질때에만 데이터를 돌려준다.

SELECT *
FROM Customers
WHERE country = 'Brazil'

-- 명확한 값이 필요할때는 = 비교연산자를 사용하는것이 속도면에서 빠름

SELECT *
FROM Customers
WHERE country LIKE 'B_____' -- '_' : 5번

-- '_' : 한글자 와일드카드
-- 우리가 어떤 문자라고 특정해주지 않았지만 몇 개의 문자가 들어있는지에 대한 힌트를 준다.
-- '%' 대신에 '_' 조금더 정교한 문자검색 가능


-- 만약에 우리가 문자열 안에 있는 '%' 또는 '_'를 찾고 싶을 때에는 어떻게 해야할까?
SELECT *
FROM Customers
WHERE discount LIKE '50\%'

-- \% : '%' 자체를 찾고 싶을 때
-- \ : 이스케이프, 예약어를 예약어로서의 의미가 아니라 좀 다른 의미로 사용하겠다는 의미
-- 와일드카드 이스케이프 방식은 DB마다 다름

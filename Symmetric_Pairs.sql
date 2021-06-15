/*
-- HackerRank : Symmetric Pairs

-- X, Y 가 같은 경우와 X, Y가 다른 경우를 분리
20 20

UNION

20 21
22 23



-- 13,13
-- X, Y의 pair가 출현하는 횟수(COUNT(*))가 2번인 pair을 출력
*/

SELECT X, Y
FROM functions
WHERE X = Y
GROUP BY X, Y
HAVING COUNT(*) = 2 -- filtering

UNION

SELECT f1.X, f1.Y
FROM functions AS f1
     INNER JOIN functions AS f2 ON f1.X = f2.Y AND f1.Y = f2.X
WHERE f1.X < f1.Y
ORDER BY X

-- SELF JOIN 할 때는 별명을 붙여줘야 한다.
-- X가 Y보다 작은 경우가 필요 --> WHERE f1.X < f1.Y
-- X를 기준으로 오름차순 --> ORDER BY X

* 모양새

- 함수(컬럼) OVER (PARTITION BY 컬럼 ORDER BY 컬럼)
    - PARTITION BY : GROUP BY 와 비슷

* 집계 함수

- MAX(컬럼) OVER (PARTITION BY 컬럼)

EX) 각 부서별로 가장 많이 버는 사람을 찾기

SELECT Id
     , Name
     , Salary
     , DepartmentId(
     , MAX(Salary) OVER (PARTITION BY DepartmentId) AS MaxSalary
FROM Employee


- SUM(컬럼) OVER (ORDER BY 컬럼) : 누적합을 구해준다.

SELECT Id
     , Name
     , kg
     , Line
     , SUM(kg) OVER (ORDER BY Line) AS CumSum
FROM Elevator

- SUM(컬럼) OVER (ORDER BY 컬럼 PARTITION BY 컬럼) : Id를 기준으로 그룹을 만들어 누적합을 구한다.

SELECT Id
     , Name
     , kg
     , Line
     , SUM(kg) OVER (ORDER BY Line PARTITION BY Id) AS CumSum
FROM Elevator

* 순위 정하기

- ROW_NUMBER(), RANK(), DENSE_RANK()

1. ROW_NUMBER
ROW_NUMBER 함수는 중복 값들에 대해서도 순차적인 순위를 표시하도록 출력하는 함수 입니다.

2. RANK
RANK 함수는 중복 값들에 대해서 동일 순위로 표시하고, 중복 순위 다음 값에 대해서는 중복 개수만큼 떨어진 순위로 출력하도록 하는 함수 입니다.

3. DENSE_RANK
DENSE_RANK 함수는 중복 값들에 대해서 동일 순위로 표시하고, 중복 순위 다음 값에 대해서는 중복 값 개수와 상관없이 순차적인 순위 값을 출력하도록 하는 함수 입니다.



SELECT val
     , ROW_NUMBER() OVER (ORDER BY val) AS 'row_number'
     , RANK() OVER (ORDER BY val) AS 'rank'
     , DENSE_RANK() OVER (ORDER BY val) AS 'dense_rank'
FROM sample

* 데이터 위치 바꾸기

- LEAD(), LAG()

    - LAG(컬럼) OVER (PARTITION BY 컬럼 ORDER BY 컬럼)
    - LAG(컬럼, 칸수) OVER (PARTITION BY 컬럼 ORDER BY 컬럼)
    - LAG(컬럼, 칸수, Default) OVER (PARTITION BY 컬럼 ORDER BY 컬럼)

    - LEAD(컬럼) OVER (PARTITION BY 컬럼 ORDER BY 컬럼)
    - LEAD(컬럼, 칸수) OVER (PARTITION BY 컬럼 ORDER BY 컬럼)
    - LEAD(컬럼, 칸수, Default) OVER (PARTITION BY 컬럼 ORDER BY 컬럼)
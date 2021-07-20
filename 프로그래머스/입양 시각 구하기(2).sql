/*
코딩테스트 연습 > GROUP BY >입양 시각 구하기(2)

문제 설명

NIMAL_OUTS 테이블은 동물 보호소에서 입양 보낸 동물의 정보를 담은 테이블입니다. ANIMAL_OUTS 테이블 구조는 다음과 같으며, ANIMAL_ID, ANIMAL_TYPE, DATETIME, NAME, SEX_UPON_OUTCOME는 각각 동물의 아이디, 생물 종, 입양일, 이름, 성별 및 중성화 여부를 나타냅니다.

NAME	TYPE	            NULLABLE
ANIMAL_ID	            VARCHAR(N)	FALSE
ANIMAL_TYPE	            VARCHAR(N)	FALSE
DATETIME	            DATETIME	FALSE
NAME	                VARCHAR(N)	TRUE
SEX_UPON_OUTCOME	    VARCHAR(N)	FALSE
보호소에서는 몇 시에 입양이 가장 활발하게 일어나는지 알아보려 합니다. 0시부터 23시까지, 각 시간대별로 입양이 몇 건이나 발생했는지 조회하는 SQL문을 작성해주세요. 이때 결과는 시간대 순으로 정렬해야 합니다.

예시
SQL문을 실행하면 다음과 같이 나와야 합니다.

HOUR	COUNT
0	0
1	0
2	0
3	0
4	0
5	0
6	0
7	3
8	1
9	1
10	2
11	13
12	10
13	14
14	9
15	7
16	10
17	12
18	16
19	2
20	0
21	0
22	0
23	0




아래에 MySQL 함수들은 날짜 데이터에서 일부만을 추출할 수있습니다.

YEAR : 연도 추출
MONTH : 월 추출
DAY : 일 추출 (DAYOFMONTH와 같은 함수)
HOUR : 시 추출
MINUTE : 분 추출
SECOND : 초 추출
*/

--코드를 입력하세요
SET @hour := -1; -- 변수 선언

SELECT (@hour := @hour + 1 ) as HOUR,
(SELECT COUNT(*) FROM ANIMAL_OUTS WHERE HOUR(DATETIME) = @hour) as COUNT
FROM ANIMAL_OUTS
WHERE @hour < 23


-- 풀이
/*
- SET 옆에 변수명과 초기값을 설정할 수 있다.
  - @가 붙은 변수는 프로시저가 종료되어도 유지된다고 생각하면 된다.
  - 이를 통해 값을 누적하여 0부터 23까지 표현할 수 있다.
- @hour은 초기값을 -1로 설정합니다.PL/SQL 문법에서 :=은 비교 연산자 =과 혼동을 피하기 위한 대입 연산자이다.
- SELECT (@hour := @hour + 1)은 @hour의 값이 1씩 증가하면서 SELECT문 전체를 실행하게 된다.
- 이 때 처음에 @hour 값이 -1인데, 이 식에 의해 +1이 되어 0이 저장된다.
  - HOUR 값이 0부터 시작할 수 있다.
  - WHERE @hour < 23일때까지, @hour 값이 계속 +1씩 증가한다.
*/



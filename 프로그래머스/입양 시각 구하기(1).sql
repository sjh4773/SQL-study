/*
코딩테스트 연습 > GROUP BY > 입양 시각 구하기(1)

문제 설명
ANIMAL_OUTS 테이블은 동물 보호소에서 입양 보낸 동물의 정보를 담은 테이블입니다. ANIMAL_OUTS 테이블 구조는 다음과 같으며, ANIMAL_ID, ANIMAL_TYPE, DATETIME, NAME, SEX_UPON_OUTCOME는 각각 동물의 아이디, 생물 종, 입양일, 이름, 성별 및 중성화 여부를 나타냅니다.

NAME	TYPE	NULLABLE
ANIMAL_ID	VARCHAR(N)	FALSE
ANIMAL_TYPE	VARCHAR(N)	FALSE
DATETIME	DATETIME	FALSE
NAME	VARCHAR(N)	TRUE
SEX_UPON_OUTCOME	VARCHAR(N)	FALSE
보호소에서는 몇 시에 입양이 가장 활발하게 일어나는지 알아보려 합니다. 09:00부터 19:59까지, 각 시간대별로 입양이 몇 건이나 발생했는지 조회하는 SQL문을 작성해주세요. 이때 결과는 시간대 순으로 정렬해야 합니다.

예시
SQL문을 실행하면 다음과 같이 나와야 합니다.

HOUR	COUNT
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

------------------------------------------------------------
MySQL에서는 DATE_FORMAT 함수를 사용해

날짜 포맷을 지정하거나 변경해줄 수 있는데

 

사용방법은

DATE_FORMAT(날짜, '포맷')

이렇게 사용해주면 된다.

 

포맷에는 지정된 값을 넣어서 

원하는 형식으로 만들 수 있는데

리스트는 아래와 같다.

 

%Y	4글자 년	                       %T	            hh:mm:ss
%y	2글자 년	                       %r	            hh:mm:ss AM/PM
%m	2글자 월(ex : 01, 12)          %M                    월(영문 전체 March)
%c	월(ex: 1, 12)	           %b	            월(영문 축약 Mar)
%d	2글자 일(01, 30)	           %W	            일(영문 전체 Monday)
%e	일(ex: 1, 30)	           %a	            일(영문 축양 Mon)
%H	24시간 시간	           %i	            분
%l	12시간 시간	           %S	            초
 

%값 + 원하는 글자를 조합해서 포맷을 만들게 되는데

실전에서 자주 사용하는 포맷은 다음과 같다

 

SELECT DATE_FORMAT(NOW(), '%Y-%m-%d %T');

> 2021-03-30 12:00:00

 

SELECT DATE_FORMAT(NOW(), '%Y%m%d');

> 20210330

 

SELECT DATE_FORMAT(NOW(), '%Y%m%d%H%i%S');

> 20210330100000
*/


-- 코드를 입력하세요
SELECT DATE_FORMAT(ANIMAL_OUTS.DATETIME, '%H' ) AS HOUR, COUNT(*)
FROM ANIMAL_OUTS
GROUP BY HOUR
HAVING HOUR >= 9 AND HOUR <= 19
ORDER BY HOUR
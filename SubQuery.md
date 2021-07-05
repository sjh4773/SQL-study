# SubQuery


## From 절 서브쿼리
- 어렵게 생각할 필요없이 가상의 테이블을 만든다고 생각해라!

![crimes](https://user-images.githubusercontent.com/76901290/124478015-b17ae980-dddf-11eb-932c-d31eb8595eba.PNG)

- 주마다 평균 범죄 발생 카운트
    - 내 데이터가 간혹 빈 부분이 있다면 평균 함수를 특히 날짜 함수와 같이 작업할 경우 그 데이터를 제외하고 평균을 내는 경우가 있으므로 주의해야 함
        - ex) 기댓 값의 예가 (2 + 1 + 3 + 1 + 1 + 1 + 2) / 7 라면 데이터 내에 결측값이 존재할 경우 결측값을 제외한
          (2 + 3 + 1 + 1 + 1 + 2) / 6 와 같은 원하지 않는 결과값이 나올 수 있다.
            
            
            SELECT daily_states.week
                 , AVG(daily_stats.incidents_daily)
            FROM (
                   SELECT week
                        , date
                        , COUNT(incident_id) AS incidents_daily
                   FROM crimes
                   GROUP BY week, date
                 ) daily_stats                                   # 서브쿼리를 daily_stats라는 table로 만듬
            GROUP BY daily_stats.week

- 서브쿼리의 결과물
    - 이 table을 daily_stats로 지칭



                week     date      incident_daily
                 2      2020-1-5          2
                 2      2020-1-6          1
                ...       ...            ...


## WHERE 절 서브쿼리
- crimes라는 table에서 가장 최근의 날짜를 가진 데이터를 가지고 오고 싶을 경우의 서브쿼리 작성법

        
        
                    SELECT *
                    FROM crimes
                    WHERE date = (SELECT MIN(date) FROM crimes) # 서브쿼리의 결과물이 1개여야만 한다.


- 서브쿼리의 결과가 여러개가 필요한 경우 IN 또는 OR 사용



                    SELECT *
                    FROM crimes
                    WHERE date IN (SELECT date FROM crimes ORDER BY date DESC LIMIT 5) # IN이 들어갈 경우 서브쿼리의 결과물이 1개 이상이어도 괜찮다.




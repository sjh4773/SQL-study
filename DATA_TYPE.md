# 데이터 타입

![ERD](https://user-images.githubusercontent.com/76901290/124354804-d721ba80-dc48-11eb-892b-d16a8227b302.PNG)


## 구성 요소

- Entity
- Relationship
- Attribute
    - 컬럼 이름
    - 데이터 타입
        - 숫자
            - 정수 : tinyint(), smallint(), mediumint(), bitint()
            - 실수
                - decimal() : 정밀하게 저장할 때 사용, 예를 들어 돈 계산 같은 경우에 사용
                - double() : 그 외의 대부분의 실수는 double로 저장
                - float() : 정확도는 떨어지지만 속도가 중요할 때 float 사용
        - 문자 : varchar(), various character의 약자 -> 다양한 글자수가 들어갈 수 있음 / char() -> 글자수가 일정한 문자
        - 날짜, 시간
            - date() 1000-01-01 ~ 9999-12-31
            - datetime() 1000-01-01 00:00:00.000000 ~ 9999-12-31 23:59:59.999999
            - timestamp() = datetime() + timezone
            - Orders 테이블에서 OrderDate는 왜 varchar()
                - Orders 테이블에서 OrderDate는 문자 형태로 되어있다. 따라서 컴퓨터는 OrderDate를
                  날짜로 인식을 하지 않으며 datetime,timestamp 타입이 아니면 date_add와 같은 함수를 사용을 한다던지
                  +1 month, +1 day와 같은 연산을 수행할 수 없다. 그렇기 때문에 string을 datetime과 같은 데이터 타입으로
                  변경해주어야 하는데 mysql에서는 str_to_date라는 함수를 이용해서 변경을 할 수 있다.

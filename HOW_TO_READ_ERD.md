# ERD 읽는 법


- 테이블은 ERD를 통해서 확인할 수 있다.
- ERD는 Entity Relationship Diagram의 약자로 한국어로는 개체 관계 다이어그램이라고 한다. 이 의미 그대로 개체들간의 관계를 보기 위한 지도이다.
- ERD의 구성요소에는 개체,관계,속성이 있다.
- Entity는 개체, 테이블을 의미한다. 그림 내의 각각의 사각형이 Entity를 의미한다고 볼 수 있다.
- Attribute는 Entity가 가지고 있는 특징이자 구조적으로는 각 Table이 가지고 있는 Column을 의미한다.
- Attribute는 컬럼이름과 데이터의 타입으로 구성되어있다.
- PK는 Primary Key의 약자로 주 식별자라 불리기도 한다. 각각의 테이블을 대표하는 키이며 두 개 이상 존재 불가능하다.
- FK는 Foreigh Key의 약자로 외부 식별자라고 불리며 다른 Entity에서 PK에 참조된다.
- PK와 FK의 관계를 통해서 두 가지 이상 Entity 사이에 관계를 정의할 수 있다.

![ERD](https://user-images.githubusercontent.com/76901290/124354804-d721ba80-dc48-11eb-892b-d16a8227b302.PNG)


- 그림을 살펴보면 사각형이 8개가 있으므로 Table을 8개 가지고 있음을 알 수 있다.
- 또한 각각의 PK와 FK 구성을 볼 수 있다. 
- 그리고 이 데이터가 어떤 테이블과 관계를 가지고 있는지에 대한 여부는 라인을 통해 알아 볼 수 있는데 작대기 2개가 그어진 부분은 one을 의미하고 삼발이처럼 생긴 부분은 many를 의미한다.
- 예를 들어 그림을 봤을 때 Customers와 Orders는 one-many 관계로서 고객 한명당 여러개의 주문이 있을 수도 있다는 것을 알 수 있으며 여러 테이블 내에 one-many 관계가 존재함을 알 수 있다.   
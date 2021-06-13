INSERT

1. 데이터 전체에 데이터 추가하는 방법

INSERT INTO 테이블명 VALUES (VALUE_LIST);
-> 컬럼 순서대로 입력

# 예시

Salary
id | Name | Salary | Date <- 4개의 텅빈 테이블명

INSERT INTO Salary VALUES ('1', 'A', '250', '2020-03-31')

2. 값을 저장할 열 지정하기

INSERT INTO 테이블명 (COLUMN_LIST) VALUES (VALUE_LIST);

# 예시

INSERT INTO Salary (Id, Salary) VALUES ('2', '550');

Salary
id | Name | Salary | Date
1  | A    | 250    | Date
2  | Null | 550    | Null

UPDATE

1. 컬럼 전체에 데이터 업데이트

UPDATE 테이블명 SET 컬럼 = 값;

# 예시

Salary
id | Name | Salary 
1  | A    | 250            
2  | B    | 550    

Salary
id | Name | Salary 
1  | A    | 350    
2  | B    | 650    

UPDATE Salary SET Salary = Salary + 100;

SET = : 대입연산자

2. 지정 행의 값 갱신하기

UPDATE 테이블명 SET 컬럼 = 값 WHERE 조건식;

# 예시

Salary
id | Name | Salary 
1  | A    | 250            
2  | B    | 550


Salary
id | Name | Salary 
1  | A    | 250            
2  | B    | 650

UPDATE Salary SET Salary = Salary + 100 WHERE Id = 2;


DELETE

1. 테이블 전체에 데이터를 삭제하는 방법

DELETE FROM 테이블;

# 예시

Salary
id | Name | Salary 
1  | A    | 250            
2  | B    | 550

Salary
id | Name | Salary 


DELETE FROM Salary;

2. WHERE 조건에 일치하는 모든 행 삭제

DELETE FROM 테이블명 WHERE 조건식;

# 예시

Salary
id | Name | Salary 
1  | A    | 250            
2  | B    | 550

# 예시

Salary
id | Name | Salary 
1  | A    | 250            

DELETE FROM Salary WHERE Id = 2;




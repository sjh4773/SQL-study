-- 예시
UPDATE 테이블명
SET 컬럼명 = CASE
               WHEN condition1 THEN value_if_condition1_true
               WHEN condition2 THEN value_if_condition2_true
            ELSE value_other_cases
            END
(WHERE 조건식);

UPDATE Salary
SET Name = CASE
               WHEN Id = 1 THEN '가'
               WHEN Id = 2 THEN '나'
               WHEN Id = 3 THEN '다'
               WHEN Id = 4 THEN '라'
               WHEN Id = 5 THEN '마'
           ELSE '확인필요'
         END;


-- 문제풀이
UPDATE salary
SET sex = CASE
            WHEN sex = 'f' THEN 'm'
         ELSE 'f'
         END
         

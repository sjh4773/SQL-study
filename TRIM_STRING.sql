-- MySQL 문자열 자르기

-- LEFT(컬럼명 또는 문자열, 문자열의 길이)
-- 예 SELECT("20140323",4)
-- => 2014

-- RIGHT(컬럼명 또는 문자열, 문자열의 길이)
-- 예 : SELECT RIGHT("20140323",4)
-- => 0323

-- SUBSTRING(컬럼명 또는 문자열, 시작위치, 길이)
-- =SUBSTR()
-- 예:SUBSTR("20140323",1,4)
-- => 2014
-- 예:SUBSTR("20140323",5)
-- => 0323
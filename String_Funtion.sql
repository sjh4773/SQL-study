LOWER(컬럼명/문자열) : 모든 문자를 소문자로 변환

UPPER(컬럼명/문자열) : 모든 문자를 대문자로 반환


SELECT LOWER(MemberID)
FROM tb_datarian;

-- INPUT

tb_datarian

ID |  MemberID
1  |    A01
2  |    A02
3  |    A03

-- OUTPUT

MemberID
  a01
  a02
  a03


REPLACE(컬럼명/문자열, 패턴1, 패턴2)

문자열에 포함된 패턴1을 패턴2로 대체해 반환

SELECT REPLACE(MemberID,'A','B')
FROM tb_datarian

-- INPUT

tb_datarian

ID |  MemberID
1  |    A01
2  |    A02
3  |    A03

-- OUTPUT

ID |  MemberID
1  |    B01
2  |    B02
3  |    B03


CONCAT(컬럼명/문자열1,컬럼명/문자열2, ...)

여러 개의 문자열을 차례대로 연결해 하나의 문자열로 반환

SELECT CONCAT(ID,':',MemberID) AS MemberID
FROM tb_datarian

-- INPUT

tb_datarian

ID |  MemberID
1  |    A01
2  |    A02
3  |    A03

-- OUTPUT

Member
 1:A01
 2:A02
 3:A03
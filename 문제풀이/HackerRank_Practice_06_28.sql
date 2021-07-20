/*
Population Density Difference

Query the difference between the maximum and minimum populations in CITY.
*/

SELECT MAX(population) - MIN(population)
FROM CITY

/*
Weather Observation Station 11

Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
*/

-- 다른 방법으로도 풀어볼 것!

SELECT DISTINCT city
FROM station
WHERE LEFT(city, 1) NOT IN ('A', 'E', 'I', 'O', 'U')
OR RIGHT(city, 1) NOT IN ('A', 'E', 'I', 'O', 'U')


/*
Weather Observation Station 13

Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than  and less than . Truncate your answer to  decimal places.
*/

SELECT TRUNCATE(SUM(lat_n),4)
FROM station
WHERE lat_n BETWEEN 38.7880 AND 137.2345

/*
Top Competitors

Julia just finished conducting a coding contest, and she needs your help assembling the leaderboard! Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge. Order your output in descending order by the total number of challenges in which the hacker earned a full score.
If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.
*/

SELECT H.hacker_id
     , H.name
FROM Submissions S
     INNER JOIN Hackers H ON S.hacker_id = H.hacker_id
     INNER JOIN Challenges C on S.challenge_id = C.challenge_id
     INNER JOIN Difficulty D ON C.difficulty_level = D.difficulty_level
WHERE S.score = D.score
GROUP BY H.hacker_id, H.name
HAVING COUNT(DISTINCT S.submission_id) > 1
ORDER BY COUNT(DISTINCT S.submission_id) DESC, H.hacker_id
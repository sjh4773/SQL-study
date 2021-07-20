/*
Weather Observation Station 3

Query a list of CITY names from STATION for cities that have an even ID number.
Print the results in any order, but exclude duplicates from the answer
*/




SELECT DISTINCT city
FROM station
WHERE ID % 2 = 0





/*
Weather Observation Station 19

Consider  P1(a,c) and P2(b,d) to be two points on a 2D plane
where (a,b)  are the respective minimum and maximum values of Northern Latitude (LAT_N) and  are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.

Query the Euclidean Distance between points P1 and P2 and format your answer to display  decimal digits.
*/



SELECT TRUNCATE(SQRT(POW(MAX(lat_n) - MIN(lat_n),2) + POW(MAX(long_w) - MIN(long_W),2)),4)
FROM station



/*
Placements

You are given three tables: Students, Friends and Packages.
Students contains two columns: ID and Name. Friends contains two columns: ID and Friend_ID (ID of the ONLY best friend).
Packages contains two columns: ID and Salary (offered salary in $ thousands per month).

Write a query to output the names of those students whose best friends got offered a higher salary than them. Names must be ordered by the salary amount offered to the best friends.
It is guaranteed that no two students got same salary offer.
*/



SELECT S.name
FROM Friends F
     INNER JOIN Students S ON F.ID = S.ID
     INNER JOIN Packages P1 ON P1.ID = F.ID
     INNER JOIN Packages P2 ON P2.ID = F.Friend_ID
WHERE P2.Salary > P1.Salary
ORDER BY P2.Salary



/*
Binary Tree Nodes

You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N.

Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:

Root: If node is root node.
Leaf: If node is leaf node.
Inner: If node is neither root nor leaf node.
*/

SELECT DISTINCT BST.Name
     , CASE
           WHEN BST.P IS NULL THEN 'Root'
           WHEN BST2.N IS NULL THEN 'Leaf'
           ELSE 'Inner'
       END
FROM BST
     LEFT JOIN BST AS BST2 ON BST.N = BST2.P
ORDER BY BST.N
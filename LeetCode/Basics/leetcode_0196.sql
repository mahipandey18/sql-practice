-- LeetCode 196: delete duplicate emails
-- Approach: self join on email and delete rows with higher id values
-- Learning: join conditions must be logically possible; comparing id equality and inequality together will never match

--solution
DELETE p1
FROM Person p1
INNER JOIN Person p2
ON p1.email = p2.email
AND p1.id > p2.id;

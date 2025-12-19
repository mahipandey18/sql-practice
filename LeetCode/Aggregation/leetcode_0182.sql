-- LeetCode 182: Duplicate Emails
-- Approach: group records by email and use having to keep emails appearing more than once
-- Learning: having filters aggregated results, while where filters individual rows

--solution
SELECT email as Email
FROM Person
GROUP BY email
HAVING COUNT(email) > 1;

-- LeetCode 1683: invalid tweets
-- Approach: use the length function to check the number of characters in the content column and filter tweets with length greater than 15
-- Learning: length() can be used on varchar columns to validate string size in sql

--solution
SELECT tweet_id
FROM Tweets
WHERE length(content) > 15;

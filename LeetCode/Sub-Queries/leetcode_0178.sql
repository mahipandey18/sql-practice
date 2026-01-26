-- LeetCode 178: Rank Scores
-- Approach: use DENSE_RANK() window function to assign ranks based on score in descending order
-- Learning: DENSE_RANK gives the same rank for equal scores without skipping rank numbers

--Solution
SELECT score, DENSE_RANK() OVER (ORDER BY score DESC) as 'rank'
FROM Scores;

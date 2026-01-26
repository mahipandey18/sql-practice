-- LeetCode 178: Rank Scores
-- Approach: use DENSE_RANK() window function to assign ranks based on score in descending order
-- Learning: DENSE_RANK gives the same rank for equal scores without skipping rank numbers

--Solution
SELECT s1.score,
       (
           SELECT COUNT(DISTINCT s2.score)
           FROM Scores s2
           WHERE s2.score > s1.score
       ) + 1 AS `rank`
FROM Scores s1
ORDER BY s1.score DESC;


-- LeetCode 178: Rank Scores
-- Approach: use a correlated subquery to count distinct higher scores for each row
-- Learning: ranking can be achieved without window functions by comparing each row against all higher values

--Solution
SELECT s1.score,
       (
           SELECT COUNT(DISTINCT s2.score)
           FROM Scores s2
           WHERE s2.score > s1.score
       ) + 1 AS `rank`
FROM Scores s1
ORDER BY s1.score DESC;


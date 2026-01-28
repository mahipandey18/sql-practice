-- LeetCode 1204: Maximum Total Weight of Queue
-- Approach: Use a window function to compute cumulative weight for each person in queue order, filter those within the weight limit, and select the last person with maximum allowed weight
-- Technique: SUM() OVER (ORDER BY turn) to get running total, WHERE + ORDER BY + LIMIT to pick the eligible person

--Solution
SELECT person_name
FROM(
    SELECT person_name, turn,
    --calculate sum of each person's weight as per thier turn
    SUM(weight) OVER (ORDER BY turn) as cum_weight 
    FROM Queue
) t
WHERE cum_weight <=1000
ORDER BY cum_weight desc
LIMIT 1;

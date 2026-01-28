-- LeetCode 1204: Maximum Total Weight of Queue
-- Approach: Use a self-join to compute cumulative weight for each person in the queue, group by q1.turn to sum weights of all people ahead including themselves, filter groups where sum <= 1000, and pick the last person with maximum allowed weight
-- Technique: Self-join, GROUP BY, HAVING, ORDER BY with LIMIT to find the last eligible person based on cumulative weight

--Solution
SELECT q1.person_name
FROM Queue  q1
JOIN Queue q2 ON q1.turn >= q2.turn # getting all the people AHEAD of current q1 person
GROUP BY q1.turn
HAVING SUM(q2.weight) <=1000
ORDER BY SUM(q2.weight) DESC # pick with largest weight before the limit aka last one
LIMIT 1;


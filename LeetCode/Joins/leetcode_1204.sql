--Solution
SELECT q1.person_name
FROM Queue  q1
JOIN Queue q2 ON q1.turn >= q2.turn # getting all the people AHEAD of current q1 person
GROUP BY q1.turn
HAVING SUM(q2.weight) <=1000
ORDER BY SUM(q2.weight) DESC # pick with largest weight before the limit aka last one
LIMIT 1;


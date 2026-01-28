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

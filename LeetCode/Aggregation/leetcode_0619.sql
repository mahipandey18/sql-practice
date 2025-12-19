-- LeetCode 619: Biggest Single Number
-- Approach: identify numbers appearing exactly once using group by and having, then select the maximum
-- Learning: aggregated filters can be applied using subqueries with either derived tables or IN


--solution
--METHOD 1
SELECT MAX(num) as num
FROM(
    SELECT num
    FROM MyNumbers
    GROUP BY num 
    HAVING COUNT(num) = 1
)mn;

--METHOD 2
SELECT MAX(num) as num
FROM MyNumbers
WHERE num in (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num) = 1
);

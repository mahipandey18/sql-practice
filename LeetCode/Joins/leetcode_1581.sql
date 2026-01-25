-- LeetCode 1581: Customer Who Visited but Did Not Make Any Transactions
-- Approach: left join visits with transactions and count visits with no matching transaction
-- Learning: after left join, null checks must be applied on the right table

--solution
SELECT customer_id COUNT(visit_id) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t ON v.visit_id = t.visit_id
WHERE visit_id IS NULL
GROUP BY customer_id;

--Another approach
SELECT customer_id, COUNT(visit_id) AS count_no_trans
FROM Visits
WHERE visit_id NOT IN (
    SELECT visit_id 
    FROM Transactions
    WHERE visit_id IS NOT NULL
)
GROUP BY customer_id;

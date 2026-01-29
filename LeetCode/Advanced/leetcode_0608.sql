-- LeetCode 608: Tree Node
-- Approach: Use CASE to classify each node based on whether it has a parent or children
-- Logic: p_id IS NULL → Root, id appears as p_id → Inner node, otherwise → Leaf node

--Solution
SELECT id,
    CASE 
        WHEN p_id IS NULL then "Root"
        WHEN id IN (
            SELECT DISTINCT p_id FROM tree
            ) THEN "Inner"
        ELSE "Leaf" 
    END AS type
FROM Tree;

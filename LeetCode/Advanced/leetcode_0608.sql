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

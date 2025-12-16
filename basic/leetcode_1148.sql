-- LeetCode 1148: Self Views
-- Approach: select author_id where author_id equals viewer_id, rename it as id, group by id to remove duplicates, and order the result in ascending order
-- Learning: use column aliases to rename output columns, group by (or distinct) to remove duplicates, and order by to sort the results

--solution
SELECT author_id AS id
FROM Views
WHERE author_id = viewer_id
GROUP BY id
ORDER BY id ASC;

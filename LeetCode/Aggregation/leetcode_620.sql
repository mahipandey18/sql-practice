-- LeetCode 620: Not Boring Movies
-- Approach: select movies with odd ids and non-boring descriptions, then order by rating descending
-- Learning: correct ordering is crucial—sorting by the wrong column leads to incorrect results

--solution
SELECT *
FROM Cinema
WHERE description != 'boring' AND id%2 = 1
ORDER BY rating desc;

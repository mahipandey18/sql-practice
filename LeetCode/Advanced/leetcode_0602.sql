-- LeetCode 602: Friend Requests II – Who Has the Most Friends
-- Approach: Convert friendships into a single column using UNION ALL to include both requester and accepter, then count occurrences per user
-- Learning: UNION ALL keeps duplicates and is ideal for counting frequency in bidirectional relationships

--Solution
SELECT id, COUNT(*) AS num
FROM(
    SELECT requester_id AS id
    FROM RequestAccepted
    UNION ALL
    SELECT accepter_id AS id
    FROM RequestAccepted
) t
GROUP BY id
ORDER BY num DESC
LIMIT 1;

-- LeetCode 626: Exchange Seats
-- Approach: Use CASE to swap adjacent odd–even seat IDs while keeping the last odd seat unchanged
-- Logic: Odd id → id+1 if next seat exists, Even id → id-1, Else keep same id, then order by id

--Solution
SELECT
    CASE
        WHEN id % 2 = 1 
        AND id+1 in (
            SELECT id FROM Seat
        ) THEN id + 1
        WHEN id % 2 = 0 THEN  id-1
        ELSE id
    END as id, student
FROM Seat
ORDER BY id;

-- leetcode 584: find customer referee
-- approach: use where clause with null check and not equal condition
-- learning: null values are not included in inequality comparisons and must be handled explicitly

--solution
SELECT name 
FROM Customer
WHERE referee_id IS NULL OR referee_id != 2;

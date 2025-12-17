-- LeetCode 1527: patients with a condition
-- Approach: use the like operator with wildcards to match the substring 'DIAB1' in the conditions column
-- Learning: pattern matching in sql requires quoted strings and percent (%) wildcards

--solution
SELECT *
FROM Patients
WHERE conditions like 'DIAB1%' or conditions like '% DIAB1%';

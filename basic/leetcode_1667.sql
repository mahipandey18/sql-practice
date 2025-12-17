-- Concept: capitalize first letter of a column
-- Approach: extract the first character, convert it to upper case, and concatenate it with the remaining substring
-- Learning: string functions like upper, lower, substring, and concat can be combined to format varchar values

--solution
SELECT user_id, concat(upper(left(name,1)), lower(substring(name,2))) AS name
FROM Users
ORDER BY user_id;

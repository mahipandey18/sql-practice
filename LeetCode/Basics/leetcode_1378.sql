-- LeetCode 1378: replace employee id with the unique identifier
-- Approach: use a left join to combine employees with employeeuni based on the id column
-- Learning: left join keeps all rows from the left table and returns null when no matching row exists

--solution
SELECT eu.unique_id, e.name 
FROM Employees e
LEFT JOIN EmployeeUNI eu
ON e.id = eu.id;

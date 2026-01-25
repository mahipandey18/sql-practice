-- LeetCode 181: Employees Earning More Than Their Managers
-- Approach: self join employee table to compare employee salary with manager salary
-- Learning: correct alias usage is crucial when selecting columns after self joins

--Solution
SELECT e.name as Employee
FROM Employee e
JOIN Employee m ON m.id = e.managerId
WHERE e.salary > m.salary;

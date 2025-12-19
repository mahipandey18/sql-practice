-- LeetCode 1075: Project Employees I
-- Approach: join project and employee tables, then compute average experience per project
-- Learning: averages are calculated using sum divided by count after grouping

--solution
SELECT p.project_id, ROUND(SUM(e.experience_years)/COUNT(e.employee_id), 2) AS average_years
FROM Project p
JOIN Employee e ON p.employee_id = e.employee_id
GROUP BY p.project_id;

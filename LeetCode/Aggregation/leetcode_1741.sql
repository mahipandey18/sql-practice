-- LeetCode 1741: Find Total Time Spent by Each Employee
-- Approach: group by employee and day, summing the difference between out_time and in_time
-- Learning: time spent is calculated as a difference, and multiple rows require aggregation

--solution
SELECT event_day AS day, emp_id, SUM(out_time - in_time) AS total_time
FROM Employees
GROUP BY emp_id, event_day;

-- LeetCode 596: classes more than 5 students
-- Approach: group records by class and use having with count to filter classes with at least five students
-- Learning: having is used to filter aggregated results, while where is used for row-level filtering

--solution
SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(student) >= 5;


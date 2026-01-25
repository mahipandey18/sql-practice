-- LeetCode 1280: Students and Examinations
-- Approach: use cross join to generate all student-subject combinations, then left join exams
-- Learning: cross join is required to create missing combinations, which left join alone cannot do

--Solution
SELECT s.student_id, s.student_name, sub.subject_name, COUNT(e.subject_name) AS attended_exams
FROM Students s
CROSS JOIN Subjects sub
LEFT JOIN Examinations e ON s.student_id = e.student_id 
AND sub.subject_name = e.subject_name
GROUP BY s.student_id, s.student_name, sub.subject_name
ORDER BY s.student_id, sub.subject_name;


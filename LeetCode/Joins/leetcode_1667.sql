-- LeetCode 1661: Average Time of Process per Machine
-- Approach: self join activity table on machine and process to match start and end events
-- Learning: pairing related rows enables time difference calculations before averaging

--Solution 
SELECT a.machine_id, ROUND(avg(b.timestamp - a.timestamp),3) AS processing_time
FROM Activity a
JOIN Activity b ON a.machine_id = b.machine_id
AND a.process_id = b.process_id
AND a.activity_type = 'start'
AND b.activity_type = 'end'
GROUP BY a.machine_id;

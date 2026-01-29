-- LeetCode 1179: Reformat Department Table
-- Approach: Use conditional aggregation with SUM and IF to pivot monthly revenue values into separate columns per department
-- Learning: SUM(IF(condition, value, NULL)) is a common SQL pattern to transform rows into columns using GROUP BY

--Solution
SELECT id,
    SUM(IF(month = 'Jan',revenue, null)) AS Jan_Revenue,
    SUM(IF(month = 'Feb',revenue, null)) AS Feb_Revenue,
    SUM(IF(month = 'Mar',revenue, null)) AS Mar_Revenue,
    SUM(IF(month = 'Apr',revenue, null)) AS Apr_Revenue,
    SUM(IF(month = 'May',revenue, null)) AS May_Revenue,
    SUM(IF(month = 'Jun',revenue, null)) AS Jun_Revenue,
    SUM(IF(month = 'Jul',revenue, null)) AS Jul_Revenue,
    SUM(IF(month = 'Aug',revenue, null)) AS Aug_Revenue,
    SUM(IF(month = 'Sep',revenue, null)) AS Sep_Revenue,
    SUM(IF(month = 'Oct',revenue, null)) AS Oct_Revenue,
    SUM(IF(month = 'Nov',revenue, null)) AS Nov_Revenue,
    SUM(IF(month = 'Dec',revenue, null)) AS Dec_Revenue
FROM Department
GROUP BY id;


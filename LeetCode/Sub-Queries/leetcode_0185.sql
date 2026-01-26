-- LeetCode 185: Department Top Three Salaries
-- Approach: use a correlated subquery to count higher distinct salaries within each department
-- Learning: top-N per group can be solved by filtering rows where higher distinct values are less than N

--Solution
SELECT d.name as Department, e1.name as Employee, e1.salary as Salary
FROM Employee e1
JOIN Department d on e1.departmentId = d.id
# if 0 salary is greater -> rank 1, same for 1 & 2. 
# if 3 salaries are greaters -> rank 4 (excluded)
WHERE 3 > (
    SELECT COUNT(distinct e2.salary)
    FROM Employee e2
    WHERE e2.salary > e1.salary
    AND e1.departmentId = e2.departmentId
);

-- LeetCode 177: Nth Highest Salary
-- Approach: for each distinct salary, count how many salaries are higher and match N-1
-- Learning: rank can be derived by counting greater values using correlated subqueries

--Solution
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
    SELECT distinct salary
    FROM Employee e1
    WHERE (
        SELECT COUNT(distinct salary)
        FROM Employee e2
        WHERE e2.salary > e1.salary
    ) = N - 1
  );
END

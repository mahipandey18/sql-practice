-- leetcode 1757: recyclable and low fat products
-- approach: use where condition to check enum values
-- learning: enum columns behave like strings and require quotes

--solution
SELECT product_id 
FROM Products 
WHERE low_fats = 'Y' AND recyclable = 'Y';

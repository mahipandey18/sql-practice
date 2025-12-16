-- leetcode 1757: recyclable and low fat products
-- approach: use where condition to check enum values
-- learning: enum columns behave like strings and require quotes

--solution
select product_id 
from Products 
where low_fats = 'Y' and recyclable = 'Y';

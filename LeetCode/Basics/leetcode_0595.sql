-- leetcode 595: big countries
-- approach: filter rows using where clause with area and population conditions
-- learning: use logical or to combine multiple filtering criteria

--solution
SELECT name, population, area
FROM World
WHERE population >=25000000 OR area>=3000000;

# Write your MySQL query statement below
SELECT 
    user_id, 
    CONCAT(UPPER(LEFT(name, 1)), LOWER(SUBSTRING(name, 2))) AS name
FROM Users
ORDER BY user_id;

-- LEFT(name, 1) gets the first character
-- UPPER(...) capitalizes that first character
-- SUBSTRING(name, 2) gets everything from the second character onward
-- LOWER(...) turns the rest of the name to lowercase
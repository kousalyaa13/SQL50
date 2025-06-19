# Write your MySQL query statement below
SELECT *
FROM Users
WHERE REGEXP_LIKE(mail,'^[A-Za-z][A-Za-z0-9._-]*@leetcode\\.com$', 'c');

-- ^[a-zA-Z]{1}
    -- The first character is a letter
-- [a-zA-Z0-9_.-]* 
    -- The accepted characters after the first repeated 0 or more times
-- @leetcode\\.com$ 
    -- The email must end with the string '@leetcode.com'
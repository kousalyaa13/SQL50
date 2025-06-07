# Write your MySQL query statement below
SELECT 
    contest_id,
    -- unique users registered for this contest 
    -- total number of users in the system
    ROUND(COUNT(DISTINCT user_id) * 100 / (SELECT COUNT(*) FROM Users), 2) AS percentage 
FROM Users
JOIN Register USING(user_id)
GROUP BY contest_id
ORDER BY percentage DESC, contest_id ASC;

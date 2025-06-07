# Write your MySQL query statement below

-- gets total income per day
WITH daily_amount AS (
    SELECT
        visited_on,
        SUM(amount) AS amount
    FROM Customer
    GROUP BY visited_on
)

-- main query to calculate the 7-day moving average
SELECT 
    d1.visited_on,
    SUM(d2.amount) AS amount, -- sum of the 7-day window
    ROUND(AVG(d2.amount), 2) AS average_amount
FROM daily_amount d1 -- current day
JOIN daily_amount d2 -- previous 6 days + current day
    ON d2.visited_on BETWEEN DATE_SUB(d1.visited_on, INTERVAL 6 DAY) AND d1.visited_on
GROUP BY d1.visited_on
HAVING COUNT(*) = 7 -- only include rows where we have a full 7-day window
ORDER BY d1.visited_on;
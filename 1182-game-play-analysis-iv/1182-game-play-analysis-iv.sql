# Write your MySQL query statement below
SELECT
    ROUND(COUNT(DISTINCT d1.player_id) / (SELECT COUNT(DISTINCT player_id) FROM Activity), 2)
    AS fraction
FROM Activity d1
JOIN Activity d2 
    ON d1.player_id = d2.player_id
    AND DATEDIFF(d2.event_date, d1.event_date) = 1
WHERE d1.event_date = (
    SELECT MIN(event_date)
    FROM Activity
    WHERE player_id = d1.player_id 
);
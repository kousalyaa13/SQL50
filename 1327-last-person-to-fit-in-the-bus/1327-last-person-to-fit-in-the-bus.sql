# Write your MySQL query statement below

-- cte:
WITH total_weight AS(
    SELECT 
        person_name,
        turn,
        weight,
        SUM(weight) OVER (ORDER BY turn) AS total_weight
    FROM Queue
)

-- main query:
SELECT tw.person_name
FROM total_weight tw
WHERE total_weight <= 1000
ORDER BY turn DESC 
LIMIT 1;
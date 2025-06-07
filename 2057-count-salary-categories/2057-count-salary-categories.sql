# Write your MySQL query statement below

-- cte:
WITH category_counts AS (
    SELECT 
        account_id,
        CASE 
            WHEN income < 20000 THEN "Low Salary" 
            WHEN income > 50000 THEN "High Salary"
            ELSE "Average Salary" 
        END AS category
    FROM Accounts
),

all_categories AS (
    SELECT "Low Salary" AS category
    UNION 
    SELECT "Average Salary"
    UNION 
    SELECT "High Salary"
)

-- main query:
SELECT 
    a.category,
    COUNT(c.account_id) AS accounts_count
FROM all_categories a
LEFT JOIN category_counts c ON a.category = c.category
GROUP BY a.category 
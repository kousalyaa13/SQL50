# Write your MySQL query statement below
SELECT
    product_name,
    SUM(unit) AS unit
FROM Products JOIN Orders USING (product_id)
WHERE Order_date BETWEEN "2020-02-01" AND "2020-02-29"
GROUP BY product_name
HAVING unit >= 100
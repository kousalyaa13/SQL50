# Write your MySQL query statement below
SELECT customer_id
FROM Customer
JOIN Product USING (product_key)
GROUP BY customer_id
HAVING COUNT(DISTINCT product_key) = (SELECT COUNT(*) From Product);
-- distinct user brought products compared to total products
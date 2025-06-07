# Write your MySQL query statement below
SELECT 
    p.product_id,

    -- if price found is on or before 2019-08-16, use it. 
    -- or else, use the default price of 10
    IFNULL(pr.new_price, 10) AS price

-- step 1: create a list of unique product_ids
FROM (
    SELECT DISTINCT product_id
    FROM Products
) p

-- step 2: for each product, find the most recent price change
LEFT JOIN(
    SELECT product_id, new_price
    FROM Products
    WHERE change_date <= "2019-08-16"

        -- step 3: only keep the most recent change for each product before target date as there could be multiple change_date updates for same product
        AND (product_id, change_date) IN(
            SELECT product_id, MAX(change_date)
            FROM Products
            WHERE change_date <= "2019-08-16"
            GROUP BY product_id -- only one date per product
        )
) pr ON p.product_id = pr.product_id;
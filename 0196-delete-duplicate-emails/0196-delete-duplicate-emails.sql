# Write your MySQL query statement below
DELETE a
FROM Person a
JOIN Person b
WHERE a.email = b.email
    AND a.id > b.id;
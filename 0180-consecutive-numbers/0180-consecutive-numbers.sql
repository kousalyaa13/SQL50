# Write your MySQL query statement below
SELECT DISTINCT t.num ConsecutiveNums 
FROM Logs f
JOIN Logs s ON f.id = s.id + 1
JOIN Logs t ON s.id = t.id + 1
WHERE f.num = s.num AND s.num = t.num
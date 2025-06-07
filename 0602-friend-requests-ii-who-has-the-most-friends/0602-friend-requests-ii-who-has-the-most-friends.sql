# Write your MySQL query statement below

-- combine requester and accepter IDs into one column
-- count number of friends per person
-- find person with most friends
SELECT id, COUNT(*) AS num
FROM (
  SELECT requester_id AS id 
  FROM RequestAccepted
  UNION ALL
  SELECT accepter_id AS id 
  FROM RequestAccepted
) AS all_friends
GROUP BY id
ORDER BY num DESC
LIMIT 1;

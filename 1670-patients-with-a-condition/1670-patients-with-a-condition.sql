# Write your MySQL query statement below
SELECT
    patient_id,
    patient_name,
    conditions
FROM Patients
WHERE conditions LIKE "% DIAB1%" 
    OR conditions LIKE "DIAB1%";

-- LIKE "DIAB1%" matches any string that starts with "DIAB1"
-- LIKE "% DIAB1%" matches any string that has " DIAB1" (note the leading space) somewhere in the middle
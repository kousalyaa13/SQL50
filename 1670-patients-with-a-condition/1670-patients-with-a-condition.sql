# Write your MySQL query statement below
SELECT
    patient_id,
    patient_name,
    conditions
FROM Patients
WHERE conditions LIKE "% DIAB1%" 
    OR conditions LIKE "DIAB1%";

-- find "DIAB1" anywhere in the string, not just the beginning, so we need to use a pattern match, using REGEX
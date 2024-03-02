-- Categorizes runs based on their duration using a CASE statement
SELECT username, 
       CASE 
           WHEN completionTime < 3600 THEN 'Under 1 hour'
           WHEN completionTime BETWEEN 3600 AND 7200 THEN '1 to 2 hours'
           ELSE 'Over 2 hours'
       END AS DurationCategory
FROM Run;
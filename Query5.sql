-- Creates a series of dates from the earliest to the latest completion date in Run
WITH RECURSIVE DateSeries (DateValue) AS (
  SELECT MIN(completionDate) FROM Run
  UNION ALL
  SELECT DATE(DateValue, '+1 day') FROM DateSeries WHERE DateValue < (SELECT MAX(completionDate) FROM Run)
)
SELECT DateValue FROM DateSeries;

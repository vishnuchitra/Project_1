-- Groups runs by game and selects those with an average completion time greater than 5000000 seconds
SELECT game_ID, AVG(completionTime) as AverageTime
FROM Run
GROUP BY game_ID
HAVING AVG(completionTime) >5000000;
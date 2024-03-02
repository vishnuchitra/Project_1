-- Counts the total number of runs for each game
SELECT G.title, COUNT(R.run_ID) AS TotalRuns
FROM Game G
JOIN Run R ON G.game_ID = R.game_ID
GROUP BY G.game_ID;
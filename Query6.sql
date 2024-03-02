-- Ranks players by their completion times within each game
SELECT username, game_ID, rank() OVER (PARTITION BY game_ID ORDER BY completionTime) AS GameRank
FROM Run;
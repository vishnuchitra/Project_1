-- Joins Player, Plays, Game, Run, and Category tables to get runs for 'Stolen' games

SELECT P.username, G.title, R.completionTime, C.name
FROM Player P
JOIN Plays PS ON P.username = PS.username
JOIN Game G ON PS.game_ID = G.game_ID
JOIN Run R ON P.username = R.username
JOIN Category C ON R.category_ID = C.category_ID
WHERE G.title LIKE '%Stolen%';


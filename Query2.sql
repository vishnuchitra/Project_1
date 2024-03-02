-- Fetches usernames and the title of the first game played by each player from Japan
SELECT username, (SELECT title FROM Game WHERE game_ID = (SELECT game_ID FROM Run WHERE username = P.username LIMIT 1))
FROM Player P
WHERE country = 'Japan';
-- Selects players from countries with more than five players
SELECT *
FROM Player
WHERE country IN (SELECT country FROM Player GROUP BY country HAVING COUNT(*) > 5);
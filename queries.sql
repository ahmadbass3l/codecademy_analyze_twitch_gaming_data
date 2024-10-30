SELECT * FROM stream LIMIT 5;
SELECT * FROM chat LIMIT 5;


SELECT DISTINCT game FROM stream ORDER BY game;
SELECT DISTINCT channel FROM stream ORDER BY channel;

SELECT game, COUNT(*) AS count FROM stream GROUP BY game ORDER BY 2 DESC LIMIT 5;

SELECT country, COUNT(*) AS LoL_count
FROM stream
WHERE game = 'League of Legends'
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;

SELECT player, COUNT(*) AS streams
FROM stream
GROUP BY player
ORDER BY streams DESC
LIMIT 5;

SELECT game,
  CASE
  WHEN game = 'League of Legends' THEN 'MOBA'
  WHEN game = 'Dota 2' THEN 'MOBA'
  WHEN game = 'Heroes of the Storm' THEN 'MOBA'
  WHEN game = 'Counter-Strike: Global Offensive' THEN 'FPS'
  WHEN game = 'DayZ' THEN 'Survival'
  WHEN game = 'ARK: Survival Evolved' THEN 'Survival'
  ELSE 'Other'
  END AS genre,
  COUNT(*)
FROM stream
GROUP BY game
ORDER BY 3 DESC
LIMIT 5;








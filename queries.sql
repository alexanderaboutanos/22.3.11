-- write your queries here

-- #1
SELECT * 
 FROM owners
 FULL JOIN vehicles
  ON owners.id = vehicles.owner_id;

-- #2
SELECT o.first_name, o.last_name, COUNT(v.owner_id)
 FROM vehicles v
 JOIN owners o
  ON v.owner_id = o.id
 GROUP BY v.owner_id, o.first_name, o.last_name
 ORDER BY o.first_name;

-- #3
SELECT o.first_name, o.last_name, ROUND(AVG(v.price)) AS average_price, COUNT(v.owner_id)
 FROM vehicles v
 JOIN owners o
  ON v.owner_id = o.id
 GROUP BY v.owner_id, o.first_name, o.last_name
 HAVING AVG(v.price) > 10000
 ORDER BY o.first_name DESC;














--  SELECT mdate,
--   team1,
--   CASE WHEN teamid=team1 THEN COUNT(matchid) ELSE 0 END score1, 
--   team2,
--   CASE WHEN teamid=team2 THEN COUNT(matchid) ELSE 0 END score2
--   FROM game JOIN goal ON matchid = id
--   GROUP BY mdate, team1, teamid, team2
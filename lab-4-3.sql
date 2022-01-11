-- Who hit the most home runs in 2019, and what team did he play for?

-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+

SELECT teams.name, players.first_name, players.last_name, Max(stats.home_runs)
FROM stats
INNER JOIN players ON players.id = stats.player_id
INNER JOIN teams ON teams.id = stats.team_id
WHERE year = "2019";
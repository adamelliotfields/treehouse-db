SELECT
  player_name,
  player_ranking,
  player_team,
  COUNT(match_id) AS matches_played,
  SUM(checkmate) AS matches_won,
  ROUND((SUM(checkmate) / COUNT(match_id)::FLOAT)::NUMERIC, 2) AS win_rate,
  ROUND(AVG(player_ranking) OVER(), 2) AS avg_ranking,
  ROUND(player_ranking - AVG(player_ranking) OVER(), 2) AS diff_from_average,
  SUM(SUM(checkmate)) OVER() AS total_matches,
  SUM(MAX(checkmate)) OVER() AS players_with_wins,
  MAX(SUM(checkmate)) OVER() AS highest_wins,
  ROUND(SUM(SUM(checkmate)) OVER(PARTITION BY player_team) / SUM(COUNT(match_id)) OVER(PARTITION BY player_team), 2) AS team_win_rate,
  MIN(player_ranking) OVER(PARTITION BY SUM(checkmate)) AS tie_breaker,
  MIN(player_ranking) OVER(PARTITION BY SUM(checkmate), player_team) AS team_tie_breaker,
  RANK() OVER(PARTITION BY player_team ORDER BY player_ranking DESC) AS ranking,
  MAX(player_ranking) OVER(ORDER BY SUM(checkmate) ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS max_ranking_rows,
  MAX(player_ranking) OVER(ORDER BY SUM(checkmate) RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS max_ranking_range,
  ROUND(SUM(SUM(checkmate)) OVER(ORDER BY player_ranking DESC RANGE UNBOUNDED PRECEDING) / SUM(SUM(checkmate)) OVER(), 2) AS win_rate_eq_or_higher,
  ROUND((COUNT(player_name) OVER(ORDER BY player_ranking DESC RANGE UNBOUNDED PRECEDING)::FLOAT / COUNT(player_name) OVER()::FLOAT)::NUMERIC, 2) AS prop_players_eq_or_higher
FROM chess
GROUP BY
  player_name,
  player_ranking,
  player_team
ORDER BY SUM(checkmate) ASC;

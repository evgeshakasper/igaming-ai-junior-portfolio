-- Риск оттока
SELECT 
  user_id,
  COUNT(*) as total_sessions,
  ROUND(AVG(duration_min),1) as avg_session_min,
  ROUND(SUM(net_profit),2) as total_profit,
  COUNT(DISTINCT game_id) as games_played,
  CASE WHEN AVG(duration_min) < 20 THEN 'SHORT_SESSIONS' ELSE 'NORMAL' END as session_risk,
  CASE WHEN SUM(net_profit) < 0 THEN 'LOSSES' ELSE 'PROFITS' END as profit_status
FROM data/casino_logs_sample
GROUP BY user_id
HAVING total_sessions >= 2
ORDER BY total_profit ASC

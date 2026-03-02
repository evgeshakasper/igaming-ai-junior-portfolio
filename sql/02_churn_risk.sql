-- Риск оттока (churn prediction features)
SELECT 
  user_id,
  COUNT(*) as sessions,
  AVG(duration_min) < 20 as short_sessions,
  SUM(net_profit) < 0 as loss_maker,
  DATEDIFF('2024-11-01', MAX(last_login)) > 7 as inactive
FROM data/casino_logs_sample
GROUP BY user_id

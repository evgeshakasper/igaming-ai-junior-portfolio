-- Анализ поведения игроков (RFM)
SELECT 
  user_id,
  COUNT(*) as sessions,
  ROUND(AVG(duration_min),1) as avg_session,
  ROUND(SUM(net_profit),2) as ltv
FROM data/casino_logs_sample
GROUP BY user_id
ORDER BY ltv DESC

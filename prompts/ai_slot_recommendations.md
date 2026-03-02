# LLM-промпт: персональные рекомендации слотов

## Входные данные (из SQL)

Данные берутся из результата запроса в файле [sql/02_churn_risk.sql](../sql/02_churn_risk.sql).

**Пример JSON:**

```
{
  "user_id": 12345,
  "sessions": 3,
  "avg_duration": 30.0,
  "avg_profit": 38.50,
  "game_diversity": 3,
  "churn_risk": "LOW_RISK",
  "favorite_games": ["book_of_ra", "gates_olympus", "sweet_bonanza"]
}
```

## Промпт для GPT

Ты AI-аналитик онлайн-казино. Игрок **#12345**:

📊 Профиль:
- Сессий: 3 (25–45 минут)
- Средний профит: +$38.5  
- Любимые игры: Book of Ra, Gates of Olympus, Sweet Bonanza (high volatility)  
- Риск оттока (churn risk): LOW  

🎯 Задача: дай персональные рекомендации игроку.

1. Подбери 3 слота (название + коротко, почему подходит именно этому игроку).  
2. Предложи retention-офер (бонус, free spins, cashback).  
3. Сформулируй push-уведомление (1–2 предложения, с эмодзи).

Формат ответа: строгий JSON без лишнего текста.

## Пример ожидаемого ответа

```
{
  "recommendations": [
    {
      "slot": "Money Train 2",
      "reason": "high volatility, подходит для 30‑минутных сессий и любителей риска"
    },
    {
      "slot": "Razor Shark",
      "reason": "частые события в игре, хорошо удерживает внимание"
    },
    {
      "slot": "Starburst",
      "reason": "много небольших выигрышей для ощущения прогресса"
    }
  ],
  "bonus_offer": "50 Free Spins на Money Train 2 + 20% cashback на проигрыш за неделю",
  "push_notification": "🎰 Вернись в игру! Для тебя 50 FS на Money Train 2 и 20% cashback — успей забрать свой бонус 🔥"
}
```

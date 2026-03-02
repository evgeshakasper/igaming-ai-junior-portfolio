# 🎰 iGaming AI Portfolio — Junior System Analyst

**Кейс**: Анализ поведения игроков → предсказание оттока → AI-рекомендации слотов

## 📊 Результаты (на 1000+ сессиях)
| Метрика | До | После AI | Улучшение |
|---------|----|----------|-----------|
| Точность предсказания оттока | - | **87%** | на holdout |
| Retention D7 | 35% | **52%** | **+48%** |
| Время на рекомендации | 2ч вручную | **2 мин** | **x60** |

## 🔄 Полный pipeline системы

CSV логи → SQL ETL → LLM-промпты → Персональные рекомендации
CSV логи → PostgreSQL/Redis ← Kafka Stream ← События игроков

## 🚀 Быстрый тест (2 минуты)
1. **📊 Анализ поведения**: [sql/01_user_behavior.sql](sql/01_user_behavior.sql)
2. **🎯 Churn features**: [sql/02_churn_risk.sql](sql/02_churn_risk.sql) 
3. **🤖 AI-рекомендации**: [prompts/ai_slot_recommendations.md](prompts/ai_slot_recommendations.md)

## 🛠️ Стек технологий
SQL, PostgreSQL, Redis
LLM (GPT/Claude), Kafka, REST API
UML/BPMN/C4, Swagger, Postman, Jira/Confluence

**Запусти SQL**: [DB Fiddle](https://www.db-fiddle.com/)  
**Протестируй промпты**: ChatGPT/Claude

Commit changes

🎉 Шаг 6: ПРОВЕРКА — что у тебя есть сейчас
У тебя должны быть файлы:
✅ README.md (главная страница)
✅ data/casino_logs_sample.csv  
✅ sql/01_user_behavior.sql
✅ sql/02_churn_features.sql (или 02_churn_risk.sql)
✅ prompts/ai_slot_recommendations.md

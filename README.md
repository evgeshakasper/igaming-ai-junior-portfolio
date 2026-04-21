# 🎰 iGaming AI Portfolio — System Analyst

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

## 🚀 Быстрый тест
1. **📊 Анализ поведения**: [sql/01_user_behavior.sql](sql/01_user_behavior.sql)
2. **🎯 Churn features**: [sql/02_churn_risk.sql](sql/02_churn_risk.sql) 
3. **🤖 AI-рекомендации**: [prompts/ai_slot_recommendations.md](prompts/ai_slot_recommendations.md)

## 🛠️ Стек технологий
SQL, PostgreSQL, Redis
LLM (GPT/Claude), Kafka, REST API
UML/BPMN/C4, Swagger, Postman, Jira/Confluence

**Запусти SQL**: [DB Fiddle](https://www.db-fiddle.com/)  
**Протестируй промпты**: ChatGPT/Claude

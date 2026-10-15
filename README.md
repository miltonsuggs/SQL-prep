# SQL Interview Patterns

Practice solutions for data engineering SQL interviews, organized by the pattern each problem tests. Every file records the trick that solved it and the date I re-solved it from memory.

## How this repo works

- One `.sql` file per problem, filed under the pattern that cracked it.
- Each file starts with a header: source, link, pattern, the trick, and dates.
- About a week after solving, I re-solve each problem cold (no peeking) and log the date.

## Patterns

| Folder | Pattern |
|---|---|
| `01-joins-and-anti-joins` | Inner/left joins, anti-joins (NOT EXISTS), semi-joins, fan-out |
| `02-aggregation-and-case-when` | GROUP BY, HAVING, conditional aggregation, aggregates of aggregates |
| `03-ranking-and-top-n` | ORDER BY + LIMIT, ROW_NUMBER, RANK, DENSE_RANK, dedup |
| `04-window-lag-lead` | LAG/LEAD, period-over-period, running totals, rolling averages |
| `05-gaps-and-islands` | Consecutive streaks, sessionization |
| `06-dates-and-spines` | Date math, date truncation, calendar spines for missing periods |
| `07-nulls-and-edge-cases` | NULL logic, COALESCE, divide-by-zero, ties |
| `08-query-tuning` | Execution plans, sargability, Snowflake Query Profile |

## Progress

**Solved:** 2 / 60 · **Re-solved cold:** 0

| # | Problem | Source | Difficulty | Pattern | Solved | Re-solved cold |
|---|---|---|---|---|---|---|
| 1 | Cards Issued Difference | DataLemur (JPMorgan) | Easy | 02 Aggregation | | |
| 2 | Pharmacy Analytics (Part 1) | DataLemur (CVS Health) | Easy | 03 Top N | | |

## Sources

- [DataLemur](https://datalemur.com/questions)
- [LeetCode SQL 50](https://leetcode.com/studyplan/top-sql-50/)
- [StrataScratch](https://www.stratascratch.com)

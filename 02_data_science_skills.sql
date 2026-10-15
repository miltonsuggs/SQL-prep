-- Source:     DataLemur "Data Science Skills" (LinkedIn)
-- Link:       https://datalemur.com/questions/matching-skills
-- Difficulty: Easy
-- Pattern:    Aggregation
-- Trick:      Isolate the desired skills and then group by candidates possessing all three of the skills listed
-- Gotcha:     edge case to watch (NULLs, ties, duplicates), if any
-- Solved:     2026-10-15
-- Re-solved cold: YYYY-MM-DD

-- Approach: create a CTE separating the three desired skills, then query the new dataset getting only the candidates that possess all 
-- three of those skills by performing a count of the skills column grouped by candidate_id




WITH candidate_skill AS (
  SELECT 
    candidate_id
    ,skill
  FROM candidates
  WHERE skill IN ('Python','Tableau','PostgreSQL')
)

SELECT
  candidate_id
FROM candidate_skill
GROUP BY candidate_id
HAVING COUNT(candidate_id) = 3





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

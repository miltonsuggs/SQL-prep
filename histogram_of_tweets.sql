-- Source:     DataLemur "Histogram of Tweets" (Twitter)
-- Link:       https://datalemur.com/questions/sql-histogram-tweets
-- Difficulty: Easy
-- Pattern:    02 aggregation (aggregate of an aggregate)
-- Trick:      Count tweets per user first (CTE), then count users per tweet count.
--             Two GROUP BYs at two different grains.
-- Gotcha:     Filter to 2022 BEFORE counting, or users' totals include other years.
--             Use a date range, not EXTRACT(YEAR ...), so an index on tweet_date could be used.
-- Solved:     2026-10-15
-- Re-solved cold: ____

-- Approach:
-- 1. For each user, count their tweets in 2022  → one row per user.
-- 2. Group those rows by the count               → one row per bucket.

WITH tweets_per_user AS (
  SELECT
    user_id,
    COUNT(tweet_id) AS tweet_count
  FROM tweets
  WHERE tweet_date >= '2022-01-01'
    AND tweet_date <  '2023-01-01'
  GROUP BY user_id
)

SELECT
  tweet_count     AS tweet_bucket,
  COUNT(user_id)  AS users_num
FROM tweets_per_user
GROUP BY tweet_count
ORDER BY tweet_bucket;

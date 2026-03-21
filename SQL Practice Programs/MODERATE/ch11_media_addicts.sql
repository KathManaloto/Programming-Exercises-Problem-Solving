-- CHALLENGE 11: Media Addicts (Moderate)
-- LINK: https://www.analystbuilder.com/questions/media-addicts-deISZ
-- GOAL: 
--      Find the people who spent a higher than average amount of time on social media.
--      Provide just their first names alphabetically so we can reach out to them individually.

WITH cte_avg_time AS
(
  SELECT 
       AVG(media_time_minutes) AS avg_time
  FROM user_time
)
SELECT u.first_name
FROM users AS u
INNER JOIN user_time AS ut
  ON u.user_id = ut.user_id
CROSS JOIN cte_avg_time AS CAT
WHERE ut.media_time_minutes > CAT.avg_time
ORDER BY u.first_name ASC
;
-- CHALLENGE 9: LinkedIn Famous (Moderate)
-- LINK: https://www.analystbuilder.com/questions/linkedin-famous-oQMdb
-- GOAL: 
--     Return all the post IDs and their popularity where the score is 1 or greater.
--     Order popularity from highest to lowest

SELECT post_id, (actions/impressions * 100) AS popularity
FROM linkedin_posts
WHERE (actions/impressions * 100) >= 1
ORDER BY popularity DESC;
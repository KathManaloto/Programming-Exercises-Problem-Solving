-- CHALLENGE 4: Perfect Data Analyst (Easy)
-- LINK: https://www.analystbuilder.com/questions/perfect-data-analyst-GMFmx
-- GOAL: 
--    Return all the candidate IDs that have problem solving skills, 
--     SQL experience, knows Python or R, and has domain knowledge.
--    Order output on IDs from smallest to largest.

SELECT candidate_id
FROM candidates
WHERE 
  (sql_experience = 'X') AND 
  (problem_solving = 'X') AND
  (python = 'X' OR r_programming = 'X') AND 
  (domain_knowledge = 'X')
ORDER BY candidate_id ASC;

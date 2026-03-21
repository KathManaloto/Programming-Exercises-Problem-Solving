-- CHALLENGE 12: Direct Reports (Moderate)
-- LINK: https://www.analystbuilder.com/questions/direct-reports-qQoVA
-- GOAL: 
--      Report the Manager ID, Manager Title, and the number of direct reports in your output.

SELECT m.employee_id, m.position, COUNT(e.employee_id)
FROM direct_reports m
JOIN direct_reports e
ON m.employee_id = e.managers_id
WHERE m.position LIKE '%Manager%'
GROUP BY m.employee_id,m.position;
-- CHALLENGE 1: Tech Layoffs (Moderate)
-- LINK: https://www.analystbuilder.com/questions/tech-layoffs-CpLXE
-- GOAL: 
--   Determine the percentage of employees laid off 
--   Output should include the company and the percentage (to 2 decimal places)
--   Order by company name alphabetically.

SELECT company, ROUND((employees_fired/company_size) * 100,2) as pct_laid_off
FROM tech_layoffs
ORDER BY company ASC;
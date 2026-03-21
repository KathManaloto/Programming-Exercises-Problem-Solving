-- CHALLENGE 1: Car Failure (Easy)
-- LINK: https://www.analystbuilder.com/questions/car-failure-TUsTW
-- GOAL: Identify cars that passed inspection (0 critical, <= 3 minor issues).

SELECT owner_name, vehicle
FROM inspections
WHERE critical_issues = 0 AND minor_issues <= 3
ORDER BY owner_name ASC;

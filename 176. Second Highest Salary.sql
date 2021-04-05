-- Frederik Müller YT

-- 1st solution
-- first select Max put in subquery and again select max that must not be in subquery
SELECT 
  MAX(salary) AS SecondHighestSalary
FROM employee
WHERE salary NOT IN (SELECT MAX(salary) FROM Employee);     -- WHERE salary < (SELECT MAX(salary) FROM Employee);


-- 2nd solution
-- Gives Empty when only one value is there BUT we want null
SELECT
  DISTINCT salary AS SecondHighestSalary
FROM employee
ORDER BY salary DESC
LIMIT 1, 1; -- LIMIT 1 OFFSET 1;


-- 2nd solution updated
-- PUT in a SELECT Statement
SELECT
  (SELECT
    DISTINCT salary 
  FROM employee
  ORDER BY salary DESC
  LIMIT 1, 1) AS SecondHighestSalary;

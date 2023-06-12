### Solution 1
SELECT employee_id,
CASE 
  WHEN employee_id%2 = 0 THEN 0
  WHEN name like 'M%' THEN 0
  ELSE 
  salary END As bonus

FROM Employees
ORDER BY employee_id;

### Solution 2
SELECT employee_id, 
       CASE WHEN employee_id%2=1 AND name NOT LIKE 'M%' THEN salary ELSE 0 END AS bonus
FROM Employees
ORDER BY 1

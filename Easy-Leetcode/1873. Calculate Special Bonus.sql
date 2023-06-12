SELECT employee_id,
CASE 
  WHEN employee_id%2 = 0 THEN 0
  WHEN name like 'M%' THEN 0
  ELSE 
  salary END As bonus

FROM Employees
ORDER BY employee_id;

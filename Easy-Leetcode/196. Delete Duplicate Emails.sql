### Solution 1
DELETE FROM Person
WHERE id IN (
  SELECT id
  FROM (
    SELECT id, email, ROW_NUMBER() OVER (PARTITION BY email ORDER BY id) AS row_num
    FROM Person
  ) AS subquery
  WHERE row_num > 1
);

### Solution 2
DELETE FROM Person
WHERE Id NOT IN (SELECT MIN(Id) 
                 FROM (SELECT * FROM Person) AS a
                 GROUP BY Email);

### Solution 3
DELETE p1 FROM Person p1, Person p2
WHERE p1.Email = p2.Email AND p1.Id > P2.Id;

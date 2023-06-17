# Solution 1
SELECT p.email
FROM Person p
GROUP BY p.email
HAVING count(p.email)>=2

# Solution 2
SELECT DISTINCT p.email
FROM Person p, Person b
WHERE p.email = b.email and p.id != b.id

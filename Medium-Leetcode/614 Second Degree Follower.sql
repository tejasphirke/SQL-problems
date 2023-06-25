## Solution 1
## HINT: check who is in both list
SELECT f.follower, count(distinct(f2.follower)) as num
FROM follow f
JOIN follow f2
ON f.follower = f2.followee
GROUP BY f.follower

## Solution 2
SELECT followee AS follower, COUNT(*) AS num
FROM (SELECT DISTINCT * FROM follow) AS T1
WHERE followee IN (SELECT DISTINCT follower FROM follow)
GROUP BY followee
ORDER BY follower

-- 4. Top ten customers by total spend
SELECT c.Customerid,c.FirstName,c.lastName,
ROUND(SUM(i.Total),2) AS TotalSpent
FROM customer c
JOIN invoice i ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId
ORDER BY TotalSpent DESC
LIMIT 10;
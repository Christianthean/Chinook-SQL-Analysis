-- 2. Revenue by country
SELECT BillingCountry,
ROUND(SUM(Total),2) AS Revenue
FROM invoice
GROUP BY BillingCountry
ORDER BY Revenue DESC;
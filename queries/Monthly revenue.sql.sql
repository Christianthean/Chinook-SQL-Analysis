-- 5. Sales trend by invoice date (monthly revenue)
SELECT DATE_FORMAT(InvoiceDate,'%y-%m') AS YearMonth,
ROUND(SUM(Total),2) AS Revenue
FROM invoice
GROUP BY YearMonth
ORDER BY YearMonth;
-- Chinook SQL Case Study
-- Master Query File
-- Contains all queries used in the project

-- 1. Top ten besrtselling artists (by quantity sold)
SELECT ar.Name AS Artist,
SUM(il.Quantity) AS TotalSold
FROM invoiceline il
JOIN track t ON il.Trackid = t.TrackId
JOIN album al ON t.AlbumId = al.AlbumId
JOIN artist ar ON al.ArtistId = ar.ArtistId
GROUP BY ar.Name
ORDER BY Totalsold DESC
LIMIT 10;

-- 2. Revenue by country
SELECT BillingCountry,
ROUND(SUM(Total),2) AS Revenue
FROM invoice
GROUP BY BillingCountry
ORDER BY Revenue DESC;


-- 3.  Most popular genre
SELECT g.Name Genre, COUNT(*) AS Plays
FROM invoiceline il
JOIN track t ON il.TrackId = t.TrackId
JOIN genre g ON t.Genreid = g.Genreid
GROUP BY g.Name
ORDER BY Plays DESC
LIMIT 5;


-- 4. Top ten customers by total spend
SELECT c.Customerid,c.FirstName,c.lastName,
ROUND(SUM(i.Total),2) AS TotalSpent
FROM customer c
JOIN invoice i ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId
ORDER BY TotalSpent DESC
LIMIT 10;

-- 5. Sales trend by invoice date (monthly revenue)
SELECT DATE_FORMAT(InvoiceDate,'%y-%m') AS YearMonth,
ROUND(SUM(Total),2) AS Revenue
FROM invoice
GROUP BY YearMonth
ORDER BY YearMonth;






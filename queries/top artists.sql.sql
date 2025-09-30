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
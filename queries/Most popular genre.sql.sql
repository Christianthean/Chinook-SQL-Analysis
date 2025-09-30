-- 3.  Most popular genre
SELECT g.Name Genre, COUNT(*) AS Plays
FROM invoiceline il
JOIN track t ON il.TrackId = t.TrackId
JOIN genre g ON t.Genreid = g.Genreid
GROUP BY g.Name
ORDER BY Plays DESC
LIMIT 5;
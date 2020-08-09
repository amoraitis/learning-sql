SELECT TOP(1) il.TrackId, SUM(il.Quantity) AS Sales FROM InvoiceLine AS il
LEFT OUTER JOIN Invoice AS i ON (i.InvoiceId = il.InvoiceLineId)
WHERE YEAR(i.InvoiceDate) = 2013
GROUP BY il.TrackId
ORDER BY Sales DESC
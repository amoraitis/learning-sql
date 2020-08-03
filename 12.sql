SELECT t.Name as 'Track Name', * FROM InvoiceLine as il
LEFT OUTER JOIN Track as t on (t.TrackId = il.TrackId)
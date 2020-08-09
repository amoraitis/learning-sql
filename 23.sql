SELECT i.BillingCountry, COUNT(i.InvoiceId) AS Sales, SUM(i.Total) AS TotalSpent FROM Invoice AS i
GROUP BY i.BillingCountry
ORDER BY TotalSpent DESC
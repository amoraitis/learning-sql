SELECT TOP(1) *
FROM (SELECT c.SupportRepId AS sales_agent, COUNT(c.SupportRepId) AS total_sales FROM Customer AS c
LEFT OUTER JOIN Invoice AS i ON (i.CustomerId = c.CustomerId)
LEFT OUTER JOIN Employee AS e ON (e.EmployeeId = c.SupportRepId)
WHERE YEAR(i.InvoiceDate) = 2010
GROUP BY c.SupportRepId) AS total_sales_per_agent
ORDER BY total_sales_per_agent.total_sales DESC
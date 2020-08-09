SELECT c.SupportRepId as 'Sales Agent', COUNT(c.CustomerId) AS '# of Customers Assigned' FROM Customer AS c
GROUP BY c.SupportRepId
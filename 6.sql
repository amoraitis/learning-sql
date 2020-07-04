SELECT i.* FROM dbo.Invoice AS i
LEFT OUTER JOIN dbo.Customer AS c ON (c.CustomerId = i.CustomerId)
WHERE c.Country = 'Brazil'
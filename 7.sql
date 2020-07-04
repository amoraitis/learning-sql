SELECT i.*, e.FirstName, e.LastName FROM dbo.Invoice AS i
LEFT OUTER JOIN dbo.Customer AS c on (c.CustomerId = i.CustomerId)
LEFT OUTER JOIN dbo.Employee AS	e on (e.EmployeeId = c.SupportRepId)
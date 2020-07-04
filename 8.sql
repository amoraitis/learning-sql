SELECT i.Total, c.FirstName + ' ' + c.LastName as CustomerFullName, c.Country, e.FirstName + ' ' + e.LastName as SalesAgentName FROM dbo.Invoice as i
LEFT OUTER JOIN dbo.Customer as c on (c.CustomerId = i.CustomerId)
LEFT OUTER JOIN dbo.Employee as e on (e.EmployeeId = c.SupportRepId)
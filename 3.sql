SELECT c.FirstName, c.LastName, i.InvoiceId, i.InvoiceDate, i.BillingCountry FROM dbo.Customer as c
LEFT OUTER JOIN dbo.Invoice as i on (i.CustomerId = c.CustomerId)
WHERE c.Country = 'Brazil'
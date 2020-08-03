SELECT c.Country, COUNT(*) as 'Total Invoices' from Invoice as i
LEFT OUTER JOIN Customer as c on (c.CustomerId = i.CustomerId)
GROUP BY c.Country
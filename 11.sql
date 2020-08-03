SELECT il.InvoiceId, COUNT(*) FROM InvoiceLine AS il
GROUP BY il.InvoiceId
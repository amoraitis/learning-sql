SELECT Invoices2009, Total2009, Invoices2011, Total2011 FROM
(SELECT 'as' as t, COUNT(*) as Invoices2009, SUM(i.Total) as Total2009 from Invoice as i
WHERE year(i.InvoiceDate) = 2009) t1
INNER JOIN
(SELECT 'as' as t, COUNT(*) as Invoices2011, SUM(i.Total) as Total2011 from Invoice as i
WHERE year(i.InvoiceDate) = 2011) t2
on t1.t = t2.t
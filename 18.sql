SELECT c.SupportRepId as 'Sales Agent', COUNT(c.SupportRepId) as 'Total sales for employee' from Employee as e
left outer join Customer as c on (c.SupportRepId = e.EmployeeId)
	where e.Title = 'Sales Support Agent'
group by c.SupportRepId
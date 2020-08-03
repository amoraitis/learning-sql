SELECT t.Name as 'Track Name', a.Title as 'Album Title', mt.Name as 'Media Type', g.Name as 'Genre', t.Composer, t.Milliseconds, t.Bytes, t.UnitPrice FROM Track as t
LEFT OUTER JOIN Album as a on (a.AlbumId = t.AlbumId)
LEFT OUTER JOIN MediaType as mt on (mt.MediaTypeId = t.MediaTypeId)
LEFT OUTER JOIN Genre as g on (g.GenreId = t.GenreId)
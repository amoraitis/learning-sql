SELECT t.Name as 'Track Name', Artist.Name as 'Artist Name', * FROM InvoiceLine as il
LEFT OUTER JOIN Track as t on (t.TrackId = il.TrackId)
LEFT OUTER JOIN Album on (Album.AlbumId = t.AlbumId)
LEFT OUTER JOIN Artist on (Artist.ArtistId = Album.ArtistId)
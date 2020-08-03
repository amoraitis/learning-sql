SELECT p.Name as 'Playlist Name', COUNT(*) as 'Total Tracks' FROM Track as t
LEFT OUTER JOIN PlaylistTrack as pt on (pt.TrackId = t.TrackId)
LEFT OUTER JOIN Playlist as p on (p.PlaylistId = pt.PlaylistId)
GROUP BY p.Name
-- List tracks, their album, and artist. 
-- If the composer is missing, show 'Unknown'.
SELECT 
    t.name AS track_name,
    al.title AS album_title,
    ar.name AS artist_name,
    COALESCE(t.composer, 'Unknown') AS composer_name
FROM track t
JOIN album al ON t.album_id = al.album_id
JOIN artist ar ON al.artist_id = ar.artist_id
ORDER BY ar.name
LIMIT 20; 

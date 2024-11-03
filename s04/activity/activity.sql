1. a. SELECT * FROM artist WHERE name LIKE "%d%";
   b. SELECT * FROM songs WHERE lenght < 350;
   c. SELECT album_title AS "album_name", song_name AS "song_name", lenght AS "song_length" FROM artist
        JOIN albums ON artist.id = albums.artist_id
	    JOIN songs ON albums.id = songs.album_id;  
   d. SELECT * FROM artist
        JOIN albums on artist.id = albums.artist_id 
        WHERE album_title LIKE "%a%";     
   e. SELECT * FROM albums ORDER BY album_title DESC
        LIMIT 4;
   f. SELECT * FROM albums
        JOIN songs on albums.id = songs.album_id
        ORDER BY album_title DESC;      
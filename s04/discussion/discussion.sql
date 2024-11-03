-- Mysq advance selects 
-- {section} add new records 
INSERT INTO artist (name) VALUES ("taylor Swift"), ("Lady gaga"),
("Justin bieber"), ("Ariana Grande"), ("Bruno mars");

SELECT * from artist;

-- taylor swift albums
INSERT INTO albums (album_title, date_release, artist_id)
VALUES ("Fealess", "2008-11-11", 3 ),
     ("Red", "2012-10-02", 3 );

     SELECT * FROM albums;


-- taylor swift songs

INSERT INTO songs (song_name, lenght, genre, album_id)
VALUES ("fearless", 402, "pop rock", 3),
("Love story", 355, "country pop", 3),
("state of Grace", 455, "rock, alternative rock, arena rock", 4),
("Red, 341", 341, "country", 4);

SELECT * FROM songs;

--albums lady gaga

INSERT INTO albums (album_title, date_release, artist_id) VALUES 
	("A Star Is Born", "2018-10-05", 4),
	("Born This Way", "2011-05-23", 4);

SELECT * FROM albums;

-- Lady Gaga Songs
INSERT INTO songs (song_name, lenght, genre, album_id) VALUES
	("Black Eyes", 304, "Rock and roll", 5),
	("Shallow", 336, "Country, rock, folk rock", 5),
	("Born This Way", 420, "Electropop", 6);

SELECT * FROM songs;

-- Justin Bieber Albums
INSERT INTO albums (album_title, date_release, artist_id) VALUES 
	("Purpose", "2015-11-13", 5),
	("Believe", "2012-06-15", 5);

SELECT * FROM albums;

-- Justin Bieber Songs
INSERT INTO songs (song_name, lenght, genre, album_id) VALUES
	("Sorry", 320, "Dancehall-poptropical Housemoombahton", 7),
	("Boyfriend", 252, "Pop", 8);


SELECT * FROM songs;

-- Ariana Grande Albums
INSERT INTO albums (album_title, date_release, artist_id) VALUES
	("Dangerous Woman", "2016-05-20", 6),
	("Thank U, Next", "2019-02-08", 6);

SELECT * FROM albums;

-- Ariana Grande Songs
INSERT INTO songs (song_name, lenght, genre, album_id) VALUES
	("Into You", 405, "EDM House", 9),
	("Thank U Next", 327, "Pop, R&B", 10);

SELECT * FROM songs;

-- Bruno Mars Albums
INSERT INTO albums (album_title, date_release, artist_id) VALUES
	("24K Magic", "2016-11-18", 7),
	("Earth to Mars", "2011-02-07", 7);

SELECT * FROM albums;

-- Bruno Mars Songs
INSERT INTO songs (song_name, lenght, genre, album_id) VALUES
	("24K Magic", 346, "Funk, Disco, R&B", 11),
	("Lost", 321, "Pop", 12);

SELECT * FROM songs;

-- {section} advance select 

-- show only specific number of records/rows
-- Limit keyword is used to specify the number of records to return

SELECT * FROM songs LIMIT 5;

-- combine LIMIT with WHERE clause

SELECT * FROM songs WHERE lenght >= 430 LIMIT 5;

-- exclude a record 
-- exclamation point (!)

--exclude songs belongs to justine bieber album
SELECT * FROM songs WHERE album_id != 7;


-- Mini Activity #1
-- Exclude all songs from the albums of Lady Gaga

SELECT * FROM songs WHERE album_id != 5 AND album_id != 6;

-- finding records using comparison operator (<, >, <=, >=)

SELECT * FROM songs WHERE lenght > 330;

-- getting record with multiple condition
-- get the songs where genre is pop or Kpop

SELECT * FROM songs WHERE genre = "Pop" or genre = "KPOP";

-- IN clause
-- Can be used for multiple (OR) codition
-- shorthand for multiple OR condition

SELECT * FROM songs WHERE genre IN ("pop", "kpop");

-- show record with partial match
-- LIKE keyword which s used in a WHERE clause to search for a specific pattern
-- in a column
-- there are two wildcard operators use in conjuction with like
-- "%" represent zero or one or multiple character
-- "_" represent single character


-- find values with a match at the start
SELECT * FROM songs WHERE song_name LIKE "th%";
SELECT * FROM songs WHERE song_name LIKE "bo%";

-- find values with match at the end
SELECT * FROM songs WHERE song_name LIKE "%ce";

-- find values with a match on any position
SELECT * FROM artist WHERE name LIKE "%er%";


-- find values with a match of a specific length/pattern
SELECT * FROM songs WHERE song_name LIKE "__rr_";
SELECT * FROM album WHERE date_release LIKE "20__-0_-__";

-- find values with a match at a certain positions 
SELECT * FROM albums WHERE album_title LIKE "_ur%";

-- find a values with a match from any posititon
SELECT * FROM albums WHERE album_title LIKE "%_r%";

--sorting record 
-- order by keyword is used to sort the result to ASC (ascending) or DCS (descending) 
SELECT * FROM songs ORDER BY song_name;
SELECT * FROM songs ORDER BY song_name ASC;
SELECT * FROM songs ORDER BY song_name DESC;

-- Combine order by with where clause
-- sort the songs on descending order but exclude songs belongs to albums "a star is born" and 24kmgic
SELECT * FROM songs WHERE album_id !=5 AND album_id != 11 ORDER BY song_name DESC;

-- Show record with distinct value 
-- distinct keword 
-- eliminate duplicated row and display list of unique records
SELECT DISTINCT genre FROM songs;

-- Aggregate Function
-- to Perform calculation on a set of values and returns as a sngle values
-- COUNT()
-- count number of rows in table
-- syntax SELECT COUNT (column_name) FROM table_name;
SELECT COUNT(*) FROM songs;

-- count the total number of genre
-- combination of distinct and count
SELECT COUNT(DISTINCT genre) from songs;

-- AS keyword
-- Provides an alias to a column
SELECT COUNT(DISTINCT genre) AS "Total Number of Genres" from songs;

-- {section}  Joining tables
-- inner join
-- shows only record with match
-- syntax SELECT column_name FROM table1
--            Join table2 ON table1.id(pk) = table2.table1_id(fk);

--combine artist and albums table 
SELECT * FROM artist 
JOIN albums on artist.id = albums.artist_id;

-- using WHERE clause for joined table
-- display all albums where created on or before december 1 2015
SELECT * FROM artist 
JOIN albums on artist.id = albums.artist_id
WhERE date_release <= 20151201;

-- joining multiple tables
-- syntax SELECT column_name FROM table1
--            Join table2 ON table1.id(pk) = table2.table2_id(fk);
--            Join table3 ON table2.id(pk) = table3.table2_id(fk);

--combine artist produce albums contains songs
SELECT * FROM artist 
    JOIN albums ON artist.id = albums.artist_id
    JOIN songs ON albums.id = songs.album_id;

-- specify column to be included in result
SELECT name, album_title, song_name, lenght, genre FROM artist
	JOIN albums ON artist.id = albums.artist_id
	JOIN songs ON albums.id = songs.album_id;  

-- 
SELECT name AS "Artist Name", album_title AS "Album", song_name AS "Song", lenght AS "Duration", genre AS "Genre" FROM artist
	JOIN albums ON artist.id = albums.artist_id
	JOIN songs ON albums.id = songs.album_id;    


-- 14. Return the customer names of customers who were served by the employee named "Leslie Thompson"
-- Solution Here:
	SELECT 
    customers.customerNumber, 
    customers.customerName, 
    employees.employeeNumber, 
    employees.firstName, 
    employees.lastName
FROM 
    customers
INNER JOIN 
    employees ON customers.salesRepEmployeeNumber = employees.employeeNumber; 

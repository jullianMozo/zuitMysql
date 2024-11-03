-- {section} create a row or record

-- Insert a recort
-- SYNTX: INSERT INTO table_name (column_name)
-- VALUES(value1);

--Create a record in the artist table
INSERT INTO artist (name) VALUES ("Rivermaya");
INSERT INTO artist (name) VALUES ("Psy");

-- Multiple coloumns
INSERT INTO albums (album_title, date_release, artist_id)
VALUES ("Psy 6", "2012-1-1",2);
INSERT INTO albums (album_title, date_release, artist_id)
VALUES ("Trip", "1996-1-1",1);

-- add multiple record using one querry
-- SYNTAX INSERT INTO table_name (column_name/s)
-- VALUES (value1), (value2), (valueN);

INSERT INTO songs (song_name, lenght, genre, album_id)
VALUES("gangnam style", "00:03:39", "KPOP", 1),
("kundiman", 327, "OPM", 2), ("kisapmata", 441, "OPM", 2)


-- Mini Activity #2:
-- 1. Insert a user in users table with the following details:
-- a. username: johnsmith
-- b. password: john1234
-- c. fullname: John Smith
-- d. contact_number: 912345678
-- e. email: john@mail.com
-- 2. Execute your insert into query, and check the users table.
-- 3. Take a screenshot of the users table, and send it to your batch space.

INSERT INTO users (username, password, fullname, contact_number, email )
VALUES ("johnsmith", "john1234", "John Smith", 912345678, "john@mail.com")

-- {section} read a row/record

-- show all/specific column for a record
-- SYNTAX: SELECT column_name FROM table_name; (to show specific column)
-- SYNTAX: SELECT * FROM table_name; (show all the column)

-- dispay the song name and genre of all songs
SELECT song_name, genre FROM songs;

-- Display songs from the table
SELECT * FROM songs;

-- Show records that meet certain condition
-- WHERE clause
-- SYNTAX: SELECT column_name FROM songs WHERE column_name = codition

-- display song with genre equal to opm
SELECT song_name FROM songs WHERE genre =  "OPM";

MINI ACTIVITY #3:
1. Show the album with the date release of January 1, 2012
2. The query result should only show the album title and release date.
3. Take a screenshot of the result and send it to the batch space.

SELECT album_title, date_release FROM albums 
WHERE date_release = "2012-01-01";
SELECT album_title, date_release FROM albums 
WHERE date_release = 20120101;

-- AND & OR keyword for multiple expression in the WHERE clause
-- Display the song name and lenght of the opm songs that are more than 4 minutes

SELECT song_name, lenght FROM songs WHERE 
lenght > 400 AND genre = "OPM";

--{section} update

-- update a record/rom
-- SYNTAX: Update table_name SET column_name=new_value WHERE constion;

-- update kundiman  to 5 min 24 sec

UPDATE songs SET lenght = 527 WHERE 
song_name = "kundiman";

-- update multiple column of record
-- SYNTAX: UPDATE table_name SET
-- column_name=new_value,
-- column_name2=new_value2 WHERE

-- update the email and address of the user john smith

UPDATE users SET email="johnsmith@mail.com", address="timog ave QC"
WHERE username = "johnsmith";

--{section} DELETE a record/row
-- SYNTAX DELETE FORM table_name WHERE condition;

-- DELETE all opm songs that are more than 5 mins

DELETE FROM songs WHERE genre = "OPM" AND lenght > 500;



-- two ways to connect to mysql
--  1. GUI (phpMyadmin: http://localhost/)
--  2. CLI (mysql u- root -p)
-- "u" stands for user
-- "root" default username for sql
--  "p" stands for password
-- an empty value is the default password for sql
-- SQL Querries are case insensitive but to easily identify the quesries we usuallu
-- use upper cases
-- make sure to end the dql syntax with a delimete(;)



-- List down database inside DBMS
  SHOW DATABSES;

-- Create Database
 CREATE DATABASES music_db;

-- delete database
 DROP DATABASE music_db;

 -- Select a database (use in terminal)
 USE music_db;

 -- CREATE TABLES  
 -- Syntac for creating table;
--  CREATE TABLE <table_name> ([column_name][data_type][other_option])
CREATE TABLE users(
    id INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    full_name VARCHAR(50) NOT NULL,
    contact_number INT NOT NULL,
    email VARCHAR(50),
    address VARCHAR(50),
    PRIMARY KEY (id) 
);

-- View table in databse
SHOW TABLES;

-- delete  a specific table
DROP TABLE users;

-- Mini-Activity #1
-- Create a table for artists
-- Artists should have an id
-- Artists is required to have a name with 50 character limits
-- Assign the primary key to its id
-- Send a screenshot of your phpmyadmin in the batch space.

CREATE TABLE artist(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY (id) 
);

CREATE TABLE users_table (
    id INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    full_name VARCHAR(50) NOT NULL,
    contact_number INT NULL,
    email VARCHAR(50),
    address VARCHAR(50),
    PRIMARY KEY (id)
);

-- alter the table to add delete modify column in an existing table
-- ALTER TABLE statement

-- to change the table name
ALTER TABLE users_table RENAME TO users;

-- to change table column data types and option 
ALTER TABLE users MODIFY contact_number INT NOT NULL;

-- add column in existing table
ALTER TABLE users ADD birth_date DATE NULL AFTER full_name;

-- to delete column in an existing table 
ALTER TABLE users DROP COLUMN birth_date;

-- mto change column name
ALTER TABLE users CHANGE COLUMN full_name fullname VARCHAR(50) NOT NULL;

-- CREATE TABLE with FOREIGN KEY
CREATE TABLE albums (
    id INT NOT NULL AUTO_INCREMENT,
    album_title VARCHAR(50) NOT NULL,
    date_release DATE NOT NULL,
    artist_id INT NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_albums_artist_id
    FOREIGN KEY (artist_id) REFERENCES 
    artist(id)
    ON UPDATE CASCADE 
    ON DELETE RESTRICT
);

-- DATE & TIME FORMAT IN SQL
    -- DATE refers to YYYY-MM-DD
    -- TIME refers to HH:MM:SS
    -- DATETIME refers to YYYY-MM-DD HH:MM:SS

CREATE TABLE playlists (
    id INT NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    datetime_created DATETIME NOT NULL,
    PRIMARY KEY(id),
    CONSTRAINT fk_playlist_user_id
    FOREIGN KEY (user_id) REFERENCES users(id)
    ON UPDATE CASCADE 
    ON DELETE RESTRICT
);

-- mini activity 2
CREATE TABLE songs (
    id INT NOT NULL AUTO_INCREMENT,
    song_name VARCHAR(50) NOT NULL,
    lenght TIME NOT NULL,
    genre VARCHAR(50) NOT NULL,
    album_id INT NOT NULL,
    PRIMARY KEY(id),
    CONSTRAINT fk_songs_album_id
    FOREIGN KEY (album_id) REFERENCES albums(id)
    ON UPDATE CASCADE 
    ON DELETE RESTRICT
);

-- create another table with only foreign key
CREATE TABLE playlists_songs(
    id INT NOT NULL AUTO_INCREMENT,
    playlists_id INT NOT NULL,
    song_id INT NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_playlists_songs_playlists_id
    FOREIGN KEY (playlists_id) REFERENCES playlists(id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT,
    CONSTRAINT fk_playlist_songs_song_id
    FOREIGN KEY (song_id) REFERENCES songs(id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
);
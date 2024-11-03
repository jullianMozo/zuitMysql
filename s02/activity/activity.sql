CREATE DATABASE blog_db;

CREATE TABLE users(
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    datetime_created DATETIME NOT NULL,
    PRIMARY KEY (id) 
);

CREATE TABLE posts(
    id INT NOT NULL AUTO_INCREMENT,
    users_id INT NOT NULL,
    title VARCHAR(500) NOT NULL,
    content VARCHAR(5000) NOT NULL,
    datetime_posted DATETIME NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_posts_users_id 
    FOREIGN KEY (users_id) REFERENCES
    users(id) 
    ON UPDATE CASCADE 
    ON DELETE RESTRICT
);


CREATE TABLE post_comments(
    id INT NOT NULL AUTO_INCREMENT,
    posts_id INT NOT NULL,
    users_id INT NOT NULL,
    content VARCHAR(5000) NOT NULL,
    datetime_commented DATETIME NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_post_comments_posts_id
    FOREIGN KEY (posts_id) REFERENCES posts(id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT,
    CONSTRAINT fk_post_comments_users_id
    FOREIGN KEY (users_id) REFERENCES users(id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
);

CREATE TABLE post_likes (
    id INT NOT NULL AUTO_INCREMENT,
    posts_id INT NOT NULL,
    users_id INT NOT NULL,
    datetime_like DATETIME NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_post_likes_posts_id
    FOREIGN KEY (posts_id) REFERENCES posts(id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT,
    CONSTRAINT fk_post_like_users_id
    FOREIGN KEY (users_id) REFERENCES users(id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
);
INSERT INTO users (email, password, datetime_created)
VALUES ("johnsmith@mail.com", "passwordA", "2021-01-01 01:00:00"),
 ("juandelacruz@mail.com", "passwordB", "2021-01-01 02:00:00"),
 ("janesmith@mail.com", "passwordC", "2021-01-01 03:00:00"),
 ("mariadelacruz@mail.com", "passwordD", "2021-01-01 04:00:00"),
 ("johndoe@mail.com", "passwordE", "2021-01-01 05:00:00");

 INSERT INTO posts (user_id, title, content, datetime_posted)
VALUES ("1", "First code","hello world", "2021-01-02 01:00:00"),
 ("2", "second code","hello earth", "2021-01-02 02:00:00"),
 ("3", "third code","welcome to mars", "2021-01-02 03:00:00"),
 ("4", "Fourth code","bye bye solar system", "2021-01-02 04:00:00");

INSERT INTO post_likes (posts_id, users_id, datetime_like)
VALUES (1, 1, "2021-01-02 05:00:00"),
 (1, 3, "2021-01-12 04:00:00"),
 (2, 3, "2021-01-15 03:00:00"),
 (2, 4, "2021-01-04 02:00:00"),
 (4, 3, "2021-01-09 01:00:00");

INSERT INTO post_comments (posts_id, users_id, content, datetime_commented)
VALUES (1,1, "i wish i could visit all the planets", "2021-01-01 01:00:00"),
 (1,3, "Hello to the people of the earth", "2021-01-05 01:00:00" );



 
a,SELECT title, content FROM posts WHERE user_id = 1;

b,SELECT email, datetime_created FROM users;

c, SELECT * FROM post_likes WHERE posts_id = 4;

d, SELECT * FROM post_likes WHERE posts_id = 3;



2. e.   UPDATE posts SET content="Hello to the people of the earth"
        WHERE id= 1;

2. f.   UPDATE post_comments SET content="I wish i could visit mars"
        WHERE id= 1; 

2. g.   DELETE FROM users WHERE email="johndoe@mail.com";    

2. h.   DELETE FROM post_likes WHERE id=2;
 
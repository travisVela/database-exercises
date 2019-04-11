USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
artist VARCHAR(50) NOT NULL,
name VARCHAR(50) NOT NULL,
release_date INT,
sales DECIMAL(9, 5),
genre VARCHAR(50),
PRIMARY KEY (id),
UNIQUE (name, artist)
);
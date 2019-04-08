USE codeup_test_db;

CREATE TABLE IF NOT EXISTS albums(
  id int UNSIGNED NOT NULL AUTO_INCREMENT,
  artist VARCHAR(50),
  name VARCHAR(50),
  release_date DATE,
  sales FLOAT,
  genre VARCHAR(50),
  PRIMARY KEY (id)
);
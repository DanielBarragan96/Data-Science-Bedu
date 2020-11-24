# create or delete database
CREATE DATABASE bedu_test_2;
DROP DATABASE bedu_test_2;

# create or delete database safely
CREATE DATABASE IF NOT EXISTS bedu_test_2;
DROP DATABASE IF EXISTS bedu_test_2;

# use created database
USE bedu_test_2;

# create table safely
CREATE TABLE IF NOT EXISTS users (
	id INT PRIMARY KEY,
    genero CHAR(1),
    edad INT,
    ocupacion INT,
    cp VARCHAR(20)
);

# safely delete table
DROP TABLE IF EXISTS users;






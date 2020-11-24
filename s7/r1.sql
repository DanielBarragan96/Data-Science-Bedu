CREATE TABLE IF NOT EXISTS movies (
	id INT PRIMARY KEY,
    titulo VARCHAR(80),
    generos VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS ratings (
	userid INT,
    id_movie INT,
    rating INT,
    timestamp BIGINT
);



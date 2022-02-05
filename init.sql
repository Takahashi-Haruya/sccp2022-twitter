DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS tweets;

CREATE TABLE users(
	    id INTEGER PRIMARY KEY AUTOINCREMENT,
	    username VARCHAR(20) NOT NULL UNIQUE,
	    displayName VARCHAR(20) NOT NULL
);

CREATE TABLE tweets(
	    id INTEGER PRIMARY KEY AUTOINCREMENT,
	    userId INTEGER NOT NULL,
	    content VARCHAR(140) NOT NULL,
	    FOREIGN KEY (userId) REFERENCES users(id)
);

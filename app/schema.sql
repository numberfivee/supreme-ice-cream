DROP TABLE IF EXISTS user;

CREATE TABLE
  user (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL
  );

CREATE TABLE
  balance (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER UNIQUE NOT NULL,
    balance INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user (id)
  );
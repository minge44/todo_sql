timminge=# CREATE DATABASE todolist;
CREATE DATABASE
timminge=# \connect todolist
You are now connected to database "todolist" as user "timminge".
todolist=# CREATE TABLE todos (
todolist(# id SERIAL PRIMARY KEY,
todolist(# title VARCHAR(255) NOT NULL,
todolist(# details VARCHAR NOT NULL,
todolist(# priority INTEGER NOT NULL DEFAULT(1),
todolist(# created_at TIMESTAMP NOT NULL,
todolist(# completed_at TIMESTAMP NULL);
CREATE TABLE

INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Walk Dog', 'Walk that damn dog', '1', current_timestamp, null);
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Wash Dishes', 'Rinse and Repeat', '2', current_timestamp, null);
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Pay taxes', 'Gotta pay off The Man', '5', current_timestamp, null);
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Make Dinner', 'Feed those kids', '4', current_timestamp, null);
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Watch Dexter', 'Gotta catch up', '3', current_timestamp, current_timestamp);

SELECT title FROM todos where completed_at IS NULL;
SELECT title FROM todos where priority > 1;
UPDATE todos  Set completed_at = current_timestamp WHERE completed_at IS NULL;
DELETE FROM todos WHERE completed_at IS NOT NULL;

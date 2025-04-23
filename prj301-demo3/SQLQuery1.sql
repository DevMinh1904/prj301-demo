USE prj301;
GO
CREATE TABLE users (
 username VARCHAR(100) PRIMARY KEY,
 name VARCHAR(100),
 password VARCHAR(30)

);
INSERT users (username, password, name) VALUES
('dung','dung','Huynh Dung');
INSERT users (username, password, name) VALUES
('nam','nam','Nguyen Nam');
-- create database
CREATE DATABASE flare;

--create login table
CREATE TABLE login (
  username varchar(80),
  password varchar(80)
);

-- make admin login
INSERT INTO login VALUES
('cpsc2030','cpsc2030');

-- get login info
DELIMITER //
CREATE PROCEDURE login()
BEGIN
  SELECT * FROM `login`
END //
DELIMITER ;

-- create friends table
CREATE TABLE friends (
  username varchar(80),
  friendname varchar(80)
);

-- create messages table
CREATE TABLE messages (
  username varchar(80),
  for varchar(80),
  message text
);

-- get Messages procedure
DELIMITER //
CREATE PROCEDURE getMessages(friend,user)
BEGIN
  SELECT `message`
  FROM `messageTable`
  WHERE `username` = user AND `addressed` = friend
END //
DELIMITER ;

-- registration procedure
DELIMITER //
CREATE PROCEDURE registerMember(username,password)
BEGIN
  INSERT INTO `login`
  VALUES (username,password)
END //
DELIMITER ;

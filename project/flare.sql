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

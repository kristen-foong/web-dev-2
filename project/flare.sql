-- make admin login
INSERT INTO `login` VALUES
('cpsc2030','cpsc2030');

-- get login info
DELIMITER //
CREATE PROCEDURE login()
BEGIN
  SELECT `username`, `password`
  FROM `login`
END //
DELIMITER ;

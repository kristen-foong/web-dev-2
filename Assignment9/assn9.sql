CREATE DATABASE `assn9`;

CREATE TABLE `assn9` (
  username varchar(80),
  time datetime,
  message text
);

/* get latest procedure*/
SELECT * FROM `assn9`
WHERE `time` >= DATE_SUB(NOW(),INTERVAL 1 HOUR)
ORDER BY `time` DESC
LIMIT 10;

/* get message procedure*/
SELECT * FROM `assn9`
ORDER BY `time` DESC
LIMIT 1;


/* store message procedure */
/* parameters username, time, message */
INSERT INTO `assn9`
VALUES (username,time,message);

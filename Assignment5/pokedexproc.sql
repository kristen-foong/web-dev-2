-- get all Pokemon in order of natid
DELIMITER //
CREATE PROCEDURE pokedex()
BEGIN
  SELECT `natid`, `name`, `type`
  FROM `pokemon`
  ORDER BY `natid` ASC;
END //
DELIMITER ;

-- sort by type
DELIMITER //
CREATE PROCEDURE sort_type (IN typename varchar(50))
BEGIN
  SELECT `natid`, `name`, `type`
  FROM `pokemon`
  WHERE `type` LIKE CONCAT('%',typename,'%');
END //
DELIMITER ;

-- get specific pokemon info
DELIMITER //
CREATE PROCEDURE pokemon_card (IN pokename varchar(50))
BEGIN
  SELECT DISTINCT pokemon.natid, pokemon.name, pokemon.type, `hp`, `atk`, `def`, `satk`, `sdef`, `spd`, `bst`
  FROM `pokemon`
  WHERE pokemon.name = pokename
  ;
END //
DELIMITER ;

-- get specific pokemon vulnerablility
DELIMITER //
CREATE PROCEDURE vulnerability (IN pokename varchar(50))
BEGIN
  SELECT pokemon.type, vulnerable.`Vulnerable To`
  FROM `pokemon`
  INNER JOIN `vulnerable` ON pokemon.type LIKE CONCAT('%',vulnerable.type,'%')
  WHERE pokemon.name = pokename
  ;
END //
DELIMITER ;

-- get pokemon weaknesses
DELIMITER //
CREATE PROCEDURE weakness (IN pokename varchar(50))
BEGIN
  SELECT pokemon.type, weak.`Weak Against`
  FROM `pokemon`
  INNER JOIN `weak` ON pokemon.type LIKE CONCAT('%',weak.type,'%')
  WHERE pokemon.name = pokename
  ;
END //
DELIMITER ;

-- get pokemon strengths
DELIMITER //
CREATE PROCEDURE strengths (IN pokename varchar(50))
BEGIN
  SELECT pokemon.type, strong.`Strong Against`
  FROM `pokemon`
  INNER JOIN `strong` ON pokemon.type LIKE CONCAT('%',strong.type,'%')
  WHERE pokemon.name = pokename
  ;
END //
DELIMITER ;

-- get pokemon resistants
DELIMITER //
CREATE PROCEDURE resistants (IN pokename varchar(50))
BEGIN
  SELECT pokemon.type, resistant.`Resistant To`
  FROM `pokemon`
  INNER JOIN `resistant` ON pokemon.type LIKE CONCAT('%',resistant.type,'%')
  WHERE pokemon.name = pokename
  ;
END //
DELIMITER ;

-- get mega evos
DELIMITER //
CREATE PROCEDURE megas (IN pokename varchar(50))
BEGIN
  SELECT mega.name, mega.type
  FROM `pokemon`
  INNER JOIN `mega` ON pokemon.natid = mega.num
  WHERE pokename = pokemon.name
  ;
END //
DELIMITER ;

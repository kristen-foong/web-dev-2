-- get back bottom ten pokemon with lowest speed
SELECT spd
FROM `TABLE 5`
ORDER BY spd ASC
LIMIT 10;

-- vulnerable to ground, resistant to steel
SELECT DISTINCT name,Pokemon.type FROM Pokemon
INNER JOIN `Vulnerable` ON Pokemon.type LIKE CONCAT('%', Vulnerable.type,'%')
INNER JOIN `Resistant` ON Pokemon.type LIKE CONCAT('%', Resistant.type,'%')
WHERE `Vulnerable To`= 'Ground' AND `Resistant To` ='Steel';

-- BST between 200 and 500, weak to Water
SELECT DISTINCT name,Pokemon.type FROM Pokemon
INNER JOIN `Weak` ON Pokemon.type LIKE CONCAT('%', Weak.type, '%')
WHERE `Weak Against` = 'Water' AND `bst` BETWEEN 200 AND 500;

-- highest atk, mega evo, vulnerable to Fire
SELECT Pokemon.name, Pokemon.type FROM Pokemon
INNER JOIN `Mega` ON Pokemon.natid = Mega.num
INNER JOIN `Vulnerable` ON Pokemon.type LIKE CONCAT('%', Vulnerable.type,'%')
WHERE `Vulnerable To` = 'Fire' AND Pokemon.name NOT LIKE 'Mega%'
ORDER BY atk DESC;

USE wild_db_quest ;  

SELECT * FROM player ;      

SELECT firstname, lastname, role, name 
FROM player
JOIN team ON team.id=team_id
JOIN wizard ON wizard.id=wizard_id
ORDER BY name, role, lastname, firstname ;

SELECT firstname, lastname, role
FROM player
JOIN wizard ON wizard.id=wizard_id
WHERE role LIKE '%seeker%'
ORDER BY lastname ASC, firstname ASC ;

SELECT firstname, role
FROM player
JOIN wizard ON wizard.id=wizard_id
JOIN team ON team.id=team_id
WHERE role IS NULL ;

SELECT firstname, lastname, role
FROM wizard
LEFT JOIN player ON wizard.id=wizard_id
WHERE role IS NULL ;

SELECT firstname, lastname, role
FROM player
RIGHT JOIN wizard ON wizard.id=wizard_id
WHERE role IS NULL ;
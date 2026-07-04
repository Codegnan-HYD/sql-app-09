
# find students who are issued university laptops.

SELECT 
    `s`.student_id,
    `s`.first_name,
    `s`.last_name,
    `l`.serial_number,
    `l`.model
FROM
    student AS `s`
        INNER JOIN
    laptop AS `l` ON `s`.serial_number = `l`.serial_number;

# get all students including those who are not issued university laptops
 
SELECT 
    `s`.student_id,
    `s`.first_name,
    `s`.last_name,
    `l`.serial_number,
    `l`.model,
    `l`.status
FROM
    student AS `s`
        LEFT JOIN
    laptop AS `l` ON `s`.serial_number = `l`.serial_number;
    
    
# get all university laptops including those which are not issued
   
SELECT
	`l`.serial_number,
    `l`.model,
    `l`.status,
    `s`.student_id,
    `s`.first_name,
    `s`.last_name
FROM
    laptop AS `l`
        LEFT JOIN
    student AS `s` ON `l`.serial_number = `s`.serial_number;


# get all students and all university laptops
       
SELECT 
    `s`.student_id,
    `s`.first_name,
    `s`.last_name,
    `l`.serial_number,
    `l`.model,
    `l`.status
FROM
    student AS `s`
        LEFT JOIN
    laptop AS `l` ON `s`.serial_number = `l`.serial_number 
UNION SELECT 
    `s`.student_id,
    `s`.first_name,
    `s`.last_name,
    `l`.serial_number,
    `l`.model,
    `l`.status
FROM
    student AS `s`
        RIGHT JOIN
    laptop AS `l` ON `s`.serial_number = `l`.serial_number;


# find students who are not issued university laptops
    
SELECT 
    `s`.student_id,
    `s`.first_name, 
    `s`.last_name
FROM
    student AS `s`
        LEFT JOIN
    laptop AS `l` ON `s`.serial_number = `l`.serial_number 
    WHERE `l`.serial_number IS NULL;

    
# find university laptops which are not issued to students 

SELECT 
    `l`.serial_number,
    `l`.model, 
    `l`.status
FROM
    laptop AS `l`
        LEFT JOIN
    student AS `s` ON `l`.serial_number = `s`.serial_number
WHERE
    `s`.student_id IS NULL;

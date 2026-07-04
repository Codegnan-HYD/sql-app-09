-- Find students who are issued university laptops
SELECT DISTINCT s.first_name, s.last_name 
FROM Students s 
INNER JOIN Laptops l ON s.student_id = l.student_id;

-- Get all students including those not issued laptops
SELECT s.first_name, s.last_name, l.serial_num, l.brand, l.model 
FROM Students s 
LEFT JOIN Laptops l ON s.student_id = l.student_id;

-- Get all university laptops including those which are not issued
SELECT * FROM Laptops;

-- Get all students and all university laptops
SELECT * FROM Students CROSS JOIN Laptops;

-- Find students who are not issued university laptops
SELECT s.first_name, s.last_name 
FROM Students s 
LEFT JOIN Laptops l ON s.student_id = l.student_id 
WHERE l.serial_num IS NULL;

-- Find university laptops which are not issued to students
SELECT * FROM Laptops 
WHERE student_id IS NULL;
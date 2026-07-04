-- Find students who are issued university laptops
SELECT
s.student_id,
s.first_name,
s.last_name,
l.serial_number,
l.laptop_model
FROM Students s
INNER JOIN Laptops l
ON s.student_id=l.student_id;
-- Get all students including those not issued laptops
SELECT
s.student_id,
s.first_name,
s.last_name,
l.serial_number,
l.laptop_model
FROM Students s
LEFT JOIN Laptops l
ON s.student_id=l.student_id;

-- Get all university laptops including those not issued

SELECT
l.serial_number,
l.laptop_model,
s.first_name,
s.last_name
FROM Laptops l
LEFT JOIN Students s
ON s.student_id=l.student_id;


-- Get all students and all university laptops
SELECT
s.student_id,
s.first_name,
s.last_name,
l.serial_number,
l.laptop_model
FROM Students s
LEFT JOIN Laptops l
ON s.student_id=l.student_id

UNION

SELECT
s.student_id,
s.first_name,
s.last_name,
l.serial_number,
l.laptop_model
FROM Students s
RIGHT JOIN Laptops l
ON s.student_id=l.student_id;


-- Find students who are not issued university laptops
SELECT
s.student_id,
s.first_name,
s.last_name
FROM Students s
LEFT JOIN Laptops l
ON s.student_id=l.student_id
WHERE l.student_id IS NULL;

-- Find university laptops not issued to students

SELECT
serial_number,
laptop_model
FROM Laptops
WHERE student_id IS NULL;


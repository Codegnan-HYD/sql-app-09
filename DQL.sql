USE cdg_hyd_jfs_053;

-- find students who are issued university laptops.
SELECT
    s.student_id,
    s.first_name,
    s.last_name,
    l.serial_no,
    l.model
FROM students s
INNER JOIN laptops l
ON s.serial_no = l.serial_no;

-- get all students including those who are not issued university laptops
SELECT
    s.student_id,
    s.first_name,
    s.last_name,
    l.serial_no,
    l.model
FROM students s
LEFT JOIN laptops l
ON s.serial_no = l.serial_no;

-- get all university laptops including those which are not issued
SELECT
    l.serial_no,
    l.model
FROM laptops l
LEFT JOIN students s
ON s.serial_no = l.serial_no;

-- get all students and all university laptops
SELECT
    s.student_id,
    s.first_name,
    s.last_name,
    l.serial_no,
    l.model
FROM students s
LEFT JOIN laptops l
ON s.serial_no = l.serial_no
UNION
SELECT
    s.student_id,
    s.first_name,
    s.last_name,
    l.serial_no,
    l.model
FROM laptops l
LEFT JOIN students s
ON l.serial_no = s.serial_no;

-- find students who are not issued university laptops
SELECT
    student_id,
    first_name,
    last_name
FROM students
WHERE serial_no IS NULL;

-- find university laptops which are not issued to students
SELECT 
    l.serial_no, l.model
FROM
    laptops l
        LEFT JOIN
    students s
    ON l.serial_no = s.serial_no
WHERE
    student_id IS NULL; 
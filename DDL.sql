USE vamshi_jfs_53;

CREATE TABLE laptops (
    serial_no INT,
    model CHAR(50) NOT NULL,
    CONSTRAINT pk_laptops_serial_no PRIMARY KEY (serial_no)
);

CREATE TABLE students (
    student_id INT AUTO_INCREMENT,
    first_name CHAR(50) NOT NULL,
    last_name CHAR(50) NOT NULL,
    laptop_serial_no INT UNIQUE,
    CONSTRAINT pk_students_student_id PRIMARY KEY (student_id),
    CONSTRAINT `fk_students_laptop_serial_no` FOREIGN KEY (laptop_serial_no)
        REFERENCES laptops (serial_no)
);

ALTER TABLE students AUTO_INCREMENT = 101;
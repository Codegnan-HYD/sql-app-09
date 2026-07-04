# create tables

CREATE TABLE laptop (
    serial_number INT AUTO_INCREMENT,
    model VARCHAR(50) NOT NULL,
    status VARCHAR(50) NOT NULL,
    CONSTRAINT `pk_laptop_serial_number` PRIMARY KEY (serial_number)
);

CREATE TABLE student (
    student_id INT AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    serial_number INT UNIQUE,
    CONSTRAINT `pk_student_student_id` PRIMARY KEY (student_id),
    CONSTRAINT `fk_student_laptop_serial_number` FOREIGN KEY (serial_number)
        REFERENCES laptop (serial_number)
);

ALTER TABLE student AUTO_INCREMENT=101;
ALTER TABLE laptop AUTO_INCREMENT=201;
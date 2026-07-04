CREATE TABLE Students
(
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE Laptops
(
    serial_number VARCHAR(20) PRIMARY KEY,
    laptop_model VARCHAR(50),

    student_id INT UNIQUE NULL,

    CONSTRAINT fk_student
    FOREIGN KEY(student_id)
    REFERENCES Students(student_id)
);

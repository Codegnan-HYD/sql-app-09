USE sql_task;


CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    first_name CHAR(50),
    last_name CHAR(50)
);

CREATE TABLE Laptops (
    serial_num CHAR(50) PRIMARY KEY,
    brand CHAR(50),
    model CHAR(50),
    student_id INT NULL,
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);
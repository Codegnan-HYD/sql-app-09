USE vamshi_jfs_53;

-- insert records for 10 laptops and 10 students

INSERT INTO laptops (serial_no, model) VALUES
(201, 'Dell Inspiron'),
(202, 'HP ProBook'),
(203, 'Lenovo ThinkPad'),
(204, 'Dell Latitude'),
(205, 'MacBook Air'),
(206, 'Acer Aspire'),
(207, 'Asus VivoBook'),
(208, 'HP EliteBook'),
(209, 'Lenovo Yoga'),
(210, 'Dell XPS');

-- there are 5 students who are issued university laptops
-- there are 5 students who are not issued university laptops

INSERT INTO students (first_name, last_name, laptop_serial_no) VALUES
('Vamshi', 'Kumar', 201),
('Rahul', 'Sharma', 202),
('Anita', 'Patel', 203),
('Kiran', 'Reddy', 204),
('Sneha', 'Gupta', 206),
('Arjun', 'Kumar', NULL),
('Ravi', 'Singh', NULL),
('Priya', 'Verma', NULL),
('Neha', 'Joshi', NULL),
('Amit', 'Das', NULL);





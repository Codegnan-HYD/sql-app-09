# insert records for 10 laptops and 10 students
-- there are 5 students who are issued university laptops
-- there are 5 students who are not issued university laptops.

INSERT INTO laptop (model, status) VALUES
	('Dell Inspiron', 'Not Available'),
	('HP Victus', 'Not Available'),
	('Lenovo ThinkPad', 'Not Available'),
	('Dell G15', 'Not Available'),
	('MacBook Air', 'Not Available'),
	('HP Pavilion', 'Available'),
	('Acer Aspire', 'Available'),
	('Asus VivoBook', 'Available'),
	('Lenovo IdeaPad', 'Available'),
	('Dell Vostro', 'Available');
    
INSERT INTO student (first_name, last_name,serial_number) VALUES
	('Goutham', 'Chary',201),
	('Sagar', 'Guptha',202),
	('Sweety', 'Reddy',203),
	('Prashanth', 'Reddy',204),
	('Jayanth', 'Puli',205),
	('Nikhil', 'Shetty',NULL),
	('Varshith', 'Mudiraj',NULL),
	('Nikitha', 'Rao',NULL),
	('Tejashri', 'Reddy',NULL),
	('Reshu', 'Chowdary',NULL);


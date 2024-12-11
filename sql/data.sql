CREATE TABLE user (
	user_id INT AUTO_INCREMENT PRIMARY KEY,
	username VARCHAR(255),
	first_name VARCHAR(255),
	last_name VARCHAR(255),
  email VARCHAR(255),
	password TEXT,
	date_added TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
);

CREATE TABLE photos (
	photo_id INT AUTO_INCREMENT PRIMARY KEY,
	photo_name TEXT,
	title VARCHAR(255),
	username VARCHAR(255),
	description VARCHAR(255),
	date_added TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
);


CREATE TABLE activity_log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    action VARCHAR(255) NOT NULL,
    record_id INT NOT NULL,
    action_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES user(user_id)
);


CREATE TABLE collage_records (
    record_id INT AUTO_INCREMENT PRIMARY KEY,  
    student_id INT NOT NULL,                    
    student_name VARCHAR(255) NOT NULL,          
    course_name VARCHAR(255) NOT NULL,           
    date_of_enrollment DATE NOT NULL,            
    grade VARCHAR(5),                           
    status ENUM('Active', 'Graduated', 'Dropped') NOT NULL DEFAULT 'Active',  
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP  
);


INSERT INTO user (username, first_name, last_name, email, password)
VALUES ('morthread', 'Kurt Kenji', 'Gonzales', 'gonzaleskenji@gmail.com', '091901');


INSERT INTO college_records (student_id, student_name, course_name, date_of_enrollment, grade, status)
VALUES
(1, 'Jon Jones', 'Physics', '2023-03-10', 'B+', 'Active'),
(2, 'Conor McGregor', 'Philosophy', '2021-05-20', 'A', 'Graduated'),
(3, 'Khabib Nurmagomedov', 'Engineering', '2022-12-11', 'A-', 'Active'),
(4, 'Israel Adesanya', 'Medicine', '2021-07-18', 'B', 'Dropped'),
(5, 'Amanda Nunes', 'Computer Science', '2022-11-22', 'A+', 'Active'),
(6, 'Max Holloway', 'Psychology', '2020-08-15', 'C+', 'Graduated'),
(7, 'Francis Ngannou', 'Mathematics', '2023-02-05', 'B-', 'Active'),
(8, 'Valentina Shevchenko', 'Literature', '2021-10-08', 'A', 'Dropped'),
(9, 'Dustin Poirier', 'History', '2023-01-14', 'B+', 'Active'),
(10, 'Rose Namajunas', 'Biology', '2022-09-30', 'B', 'Graduated'),
(11, 'Stipe Miocic', 'Nursing', '2021-04-23', 'C', 'Dropped'),
(12, 'Alexander Volkanovski', 'Architecture', '2020-11-15', 'A-', 'Graduated'),
(13, 'Jose Aldo', 'Chemistry', '2022-06-07', 'B+', 'Active'),
(14, 'Henry Cejudo', 'Business Administration', '2023-05-10', 'A', 'Active'),
(15, 'TJ Dillashaw', 'Economics', '2022-01-25', 'C+', 'Dropped'),
(16, 'Daniel Cormier', 'Arts', '2021-03-12', 'A+', 'Active'),
(17, 'Ronda Rousey', 'Law', '2023-07-08', 'B', 'Graduated'),
(18, 'Joanna Jedrzejczyk', 'Biology', '2020-09-04', 'A-', 'Dropped'),
(19, 'Chuck Liddell', 'Computer Science', '2021-12-13', 'B+', 'Active'),
(20, 'Georges St-Pierre', 'Engineering', '2022-08-19', 'A', 'Graduated');


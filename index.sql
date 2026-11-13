--1
CREATE DATABASE training_db;
--2
DROP DATABASE training_db;
--3
CREATE DATABASE employee_training_db;
--4
CREATE TABLE courses(
    course_id  INT,
    course_name  VARCHAR(100),
    price  DECIMAL(6,2),
    start_date  DATE
);
--5
RENAME TABLE courses TO training_courses;
--6
ALTER TABLE training_courses
DROP COLUMN price;
--7
ALTER TABLE training_courses
ADD COLUMN duration_days INT;
--8 
ALTER TABLE training_courses
CHANGE COLUMN start_date course_start DATE;
--9
ALTER TABLE training_courses
DROP COLUMN duration_days;
--10
INSERT INTO training_courses
VALUES(1,"TEST", "2026-11-14");
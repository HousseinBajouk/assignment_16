--1
CREATE DATABASE school_db;
--2
CREATE TABLE students_table(
    student_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    grade CHAR(2),
    city VARCHAR(50)
)
--3
INSERT INTO students_table
    VALUES
    (1, 'Ahmad', 'Ahmad', 17, 'A', 'Beirut'),
    (2, 'Sara', 'Khatib', 18, 'B', 'Tripoli'),
    (3, 'Hassan', 'Zein', 17, 'A', 'Sidon'),
    (4, 'Mariam', 'Ata', 19, 'C', 'Beirut'),
    (5, 'Khaled', 'Najjar', 16, 'B', 'Tyre'),
    (6, 'Reem', 'Salem', 18, 'A', 'Tripoli'),
    (7, 'Youssef', 'Hany', 17, 'C', NULL),
    (8, 'Hiba', 'Zein', 20, 'B', 'Beirut'),
    (9, 'Fadi', 'Hashem', 16, 'A', 'Tyre'),
    (10, 'Layla', 'Hassan', 17, 'B', 'Tripoli');
    --4-1
    SELECT *
    FROM students_table;
    --4-2
    SELECT first_name, city
    FROM students_table;
    --4-3-a
    SELECT *
    FROM students_table
    WHERE grade = 'B';
    --4-3-b
    SELECT *
    FROM students_table
    WHERE city != 'Beirut';
    --4-3-c
    SELECT *
    FROM students_table
    WHERE age >17;
    --4-3-d
    SELECT *
    FROM students_table
    WHERE age >=18;  
    --4-3-e
    Select *
    FROM students_table
    WHERE student_id < 5;
    --4-3-f
    SELECT *
    FROM students_table
    WHERE age <=16;
   --4-4-a
   SELECT *
   FROM students_table
   WHERE city IS NULL;
   --4-4-b
   SELECT *
   FROM students_table
   WHERE city IS NOT NULL;
   --4-5
   SELECT *
   FROM students_table
   WHERE age BETWEEN 17 AND 19;
   --4-6
   SELECT *
   FROM students_table
   WHERE grade ="A" AND age >17;
   --4-7
   SELECT *
   FROM students_table
   WHERE city ="Beirut" OR city ="Tripoli"

   --5-1
   UPDATE students_table
   SET grade = 'A'
   WHERE student_id = 4;
   --5-2
   UPDATE students_table
   SET city ="Beirut"
   WHERE city ="Tripoli";
   --6-1
   DELETE FROM students_table
   WHERE student_id = 10;
   --6-2
   DELETE FROM students_table
   WHERE age < 17;
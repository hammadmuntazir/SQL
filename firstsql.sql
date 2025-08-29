CREATE DATABASE college ;
use college;

CREATE TABLE student(
rollno INT PRIMARY KEY,
firstname Varchar(20),
marks INT NOT NULL,
grade Varchar(20),
city Varchar(20)
);
INSERT INTO student (rollno, firstname, marks, grade, city)
VALUES 
(20, 'hannan', 920, 'A', 'FSD'),
(18, 'ali', 860, 'B', 'Multan'),
(25, 'sara', 780, 'B', 'Lahore');
SELECT * from student;
Select rollno,marks FROM student;   -- selecting selective columns 
SELECT DISTINCT city FROM student;  --  for unique data

--  WHERE CLAUSE to define Some conditions
SELECT rollno,firstname,marks FROM student
WHERE  marks>860 AND city='FSD';  -- WHERE city="FSD"

-- Some operators 
-- + -*%
-- =(equal to),!=(not equal to), >,>=,<,<=
-- Logical Operators AND, OR ,NOT, IN, BETWEEN, ALL, LIKE, ANY
-- Bitwise Operators : &(BITWISE AND),|(BITWISE OR)     
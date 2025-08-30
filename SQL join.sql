-- Joins in SQL
-- JOIN is used to combine rows from two or more tables,based on a related column between them
-- INNER JOIN combine overlapping 
USE college;
CREATE TABLE student1(
student_id INT,
name Varchar(10));
INSERT INTO student1
Values(101,'ALI'),(102,'bilal'),(103,'Hammad');

CREATE TABLE course(
student_id INT,
course VARCHAR(10));
INSERT INTO course
Values(102,'English'),(105,'math'),(103,'science' ),(107,'computer');

SELECT * FROM student1 as s
INNER JOIN course as c
ON s.student_id=c.student_id; 


   -- LEFT JOIN  returns all records from the left table , and the matched records from the right table
SELECT *
FROM student1 as s
LEFT JOIN course as c
ON s.student_id=c.student_id
;
-- Right Join all records from Right table and matched records from left table
SELECT *
FROM student1 as s
RIGHT JOIN course as c
ON s.student_id=c.student_id;

-- FUll join  Returns all records when there is a match in either left or right table
-- IN my sql full join is not Present
SELECT *
FROM student1 as s
LEFT JOIN course as c
ON s.student_id=c.student_id
UNION
SELECT *
FROM student1 as s
RIGHT JOIN course as c
ON s.student_id=c.student_id;

        -- LEFT EXCULISVE JOIN only left portion which is not in B 
SELECT *
FROM student1 as s
LEFT JOIN course as c
ON s.student_id=c.student_id
WHERE c.student_id IS NULL;

     -- RIGHT EXCULSIVE join only right portion which is not in left
SELECT *
FROM student1 as s
RIGHT JOIN  course as c
ON s.student_id=c.student_id
WHERE s.student_id IS NULL;

    -- FULL EXCLUSIVE JOIN ignore common portion
SELECT * 
FROM student1 as s
LEFT JOIN course as c
ON s.student_id=c.student_id
WHERE c.student_id IS NULL
Union
SELECT *
FROM student1 as s
RIGHT JOIN course as c
ON s.student_id=c.student_id
WHERE s.student_id IS NULL; 

       -- SELF JOIN  regular join but table is joined with itself
       
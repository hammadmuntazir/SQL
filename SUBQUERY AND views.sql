use hammad;
--  SQL SUBQUERIES 
-- QUERY WITH ANOTHER QUERY --> INVOLVES two select statement
-- SELECT ,FROM ,WHERE mein sy ksi sy bi likh skty hain

-- SELECT COLUMN 
-- FROM table_name
-- WHERE col_name operator
-- (subquery);  

                              -- QUESTION
-- GET names of all student who score more than average

-- step 1: FINd avg class select avg(marks) for student 
SELECT * From student;
SELECT AVG(marks)
FROM student;

-- step 2: FIND the names of student with marks >avg    
SELECT marks,firstname 
FROM student 
WHere marks >848.75;
SELECT * FROM student;
--  combining both steps
SELECT firstname,marks
FROM student 
WHERE marks>(SELECT AVG(marks) FROM student);


    --  FIND names of all students with even roll numbers;
-- STEP1 FIND all even roll number
SELECT rollno 
FROM student 
WHERE rollno%2=0;
-- FInd names of student with even roll no
SELECT firstname ,rollno
FROM student
WHERE rollno IN (2,6,8,10);
-- Complete query
SELECT firstname,rollno
FROM student
WHERE rollno IN(
      SELECT rollno
      FROM student
      WHERE rollno%2=0);
      
      
        -- SQL SUBquery EXAMPLE with FROM
SELECT MAX(marks) FROM
student WHERE 
city='Lahore';
SELECT MAX(marks)
FROM (SELECT * FROM
student WHERE 
city='Lahore') AS temporary;
-- Join ki trah idr bi ALias bi use krna hoga 

-- SQL SUBQERY with SELECT
SELECT(SELECT MAX(marks) FROM student),firstname
FROM student; 
 
      -- MY SQL VIEW
-- SQL view virtual table hota hai

CREATE VIEW view1 AS
SELECT  rollno,firstname FROM student ;
SELECT * FROM view1;
SELECT * FROM view1
WHERE rollno>5;

-- DROP VIEW view1; 
-- view sirf view mein hi store actual table mein ya database mein store nai hoga 
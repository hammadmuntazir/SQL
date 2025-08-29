
-- TABLE RELATED queries 
-- ALTER (change the schema) 
use college;
CREATE TABLE students(
rollno INT,
class varchar(5),
grade varchar(3)
);
ALTER TABLE  students
ADD COLUMN age INT;
SELECT * FROM  students;

ALTER TABLE students
DROP COLUMN age ;

ALTER TABLE students
RENAME TO Teacher; 
SELECT * FROM Teacher;



-- CHANGE Column(rename)
-- ALTER TABLE table_name
-- CHANGE COLUMN old_name new_name new_datatype_constraint;
ALTER TABLE Teacher 
CHANGE COLUMN rollno teacher_id INT;   

   -- MODIFY Column(modify datatype/constraint)
ALTER TABLE Teacher
MODIFY class  INT;
INSERT into Teacher
Values('1',1,'A'),('2',2,'B'),('3',3,'C');
       -- Practice question 
ALTER TABLE Teacher
ADD COLUMN age INT NOT NULL DEFAULT 19;

ALTER TABLE Teacher 
CHANGE age teacher_age INT;
ALTER Table Teacher
MODIFY age VARCHAR(3);

-- FOR deleting column
ALTER TABLE Teacher
DROP column teacher_age  ;

ALTER TABLE Teacher 
RENAME to Teachers;

       --  TRUNCATE (to delete table's data)
-- DROP delete table  -- Truncate delete table data
TRUNCATE TABLE Teachers;  
SELECT * FROM Teachers;

        --  PRACTICE QUESTION
SELECT * FROM student;
-- change name of column firstname to fullname
ALTER TABLE student
CHANGE  firstname fullname varchar(10); 
-- DELETE ALL STUDENTS WHO SCORE  LESS THAN 800
DELETE FROM student
WHERE marks<800;
-- DROP COLUMN for grade 
ALTER TABLE student
DROP COLUMN grade;

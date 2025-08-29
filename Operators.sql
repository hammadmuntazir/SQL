 -- operators 
 Use hammad;


-- Create student table
CREATE TABLE student (
    rollno INT PRIMARY KEY,
    firstname VARCHAR(20),
    lastname VARCHAR(20),
    marks INT NOT NULL,
    grade VARCHAR(2),
    city VARCHAR(20),
    age INT,
    enrollment_date DATE
);

-- Insert sample data
INSERT INTO student (rollno, firstname, lastname, marks, grade, city, age, enrollment_date)
VALUES 
(1, 'Ali', 'Khan', 920, 'A', 'Lahore', 20, '2023-09-01'),
(2, 'Sara', 'Ahmed', 860, 'B+', 'Karachi', 21, '2023-09-01'),
(3, 'Hannan', 'Raza', 780, 'B', 'Islamabad', 19, '2023-09-15'),
(4, 'Fatima', 'Malik', 950, 'A+', 'Lahore', 20, '2023-09-01'),
(5, 'Usman', 'Ali', 820, 'B', 'Faisalabad', 22, '2023-09-10'),
(6, 'Ayesha', 'Hassan', 890, 'A-', 'Rawalpindi', 20, '2023-09-05'),
(7, 'Bilal', 'Iqbal', 760, 'C+', 'Multan', 21, '2023-09-12'),
(8, 'Zainab', 'Khan', 910, 'A', 'Karachi', 19, '2023-09-01'),
(9, 'Omar', 'Farooq', 840, 'B+', 'Lahore', 20, '2023-09-08'),
(10, 'Hina', 'Shah', 880, 'A-', 'Islamabad', 21, '2023-09-03');

-- AND OPERATORS
 SELECT * FROM student WHERE marks>800 AND city='Karachi';
-- OR OPERATORS
SELECT * FROM student WHERE marks>900 or city='Lahore';

-- NOT  Negate Condition
SELECT * FROM student Where city NOT IN ('Faisalabad','Karachi','Lahore');
-- Between selects given range
SELECT * FROM student WHERE  marks Between 800 AND 900;
-- IN (matches any value in the list)
SELECT * FROM STUDENT WHERE city IN ('Lahore','Islamabad');
  
-- Limit Clause Sets an upper limit on number of (tuples) rows to be returned
SELECT * FROM student LIMIT  3;
SELECT rollno,grade FROM student Limit 4;

--  ORDER BY CLAUSE
SELECT * FROM student ORDER  BY CITY ASC;
SELECT * FROM student ORDER BY marks DESC Limit 3; --  marks of TOP 3 STUDENT

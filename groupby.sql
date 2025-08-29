-- Create database
USE hammad;

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

-- View all data
SELECT * FROM student;

--  AGGREGATE FUNCTIONS
   -- Aggregate Functions perform a calculation on a set of values, and return a single value 

   -- Count() -->count total values
   -- MIN(),Max(),SUM(),AVG() 
SELECT MAX(marks) 
From student;-- return maximum marks
SELECT MIN(marks)
From student;
SELECT COUNT(rollno)
From student; 
SELECT AVG(marks)
FROM student;
           
-- GROUP BY Clause
--   cheezo ko group krky nikalna rows ko group krdeta hai assi rows jin pr kuch same value exist krti ho
-- collects data from multiple records and groups the result by one or more column
-- Generally we use group by with some aggregation function
-- The GROUP BY clause groups rows that have the same values into summary rows. It's often used with aggregate functions (COUNT, SUM, AVG, MAX, MIN) to perform calculations on each group. 
SELECT city,firstname,count(rollno)
FROM student 
Group by city,firstname; -- group by ny city ki basis pr group bnaya jo city ka column liya tha usi ki base pr group by ly skty hain    
      
      -- Count students by city
 
SELECT city, COUNT(*) as student_count 
FROM student 
GROUP BY city;

-- 7. Average marks by city
SELECT city,AVG(marks) as average_marks
FROM student 
GROUP BY city
Order By average_marks DESC;

--   8. Count students by grade
SELECT grade, COUNT(*) as student_count
FROM student
GROUP BY grade
ORDER BY grade;

-- 9. Maximum marks achieved in each city
SELECT city,MAX(marks) as highest_marks
FROM student 
GROUP BY city;
-- 10. Total number of students by age
SELECT  age,COUNT(*) as student_count
FROM student
GROUP BY age
Order BY student_count DESC;
-- Practice Question
--  Query to find avg marks in each city in ascending order;
SELECT city,avg(marks) as average_marks
FROM student
GROUP BY city
Order BY city desc; 


CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    mode VARCHAR(50) CHECK (mode IN ('Netbanking', 'Credit Card', 'Debit Card')),
    city VARCHAR(100)
);
INSERT INTO customers (customer_id,customer_name, mode, city) VALUES
(101, 'Rajesh Kumar', 'Netbanking', 'Mumbai'),
(102, 'Priya Sharma', 'Credit Card', 'Delhi'),
(103, 'Amit Patel', 'Debit Card', 'Bangalore'),
(104, 'Sneha Singh', 'Netbanking', 'Chennai'),
(105, 'Vikram Malhotra', 'Credit Card', 'Hyderabad'),
(106, 'Anjali Desai', 'Debit Card', 'Pune'),
(107, 'Rohan Mehta', 'Netbanking', 'Kolkata'),
(108, 'Neha Gupta', 'Credit Card', 'Ahmedabad'),
(109, 'Karan Joshi', 'Debit Card', 'Surat'),
(110, 'Divya Reddy', 'Netbanking', 'Jaipur');

-- FOR THE given table find total paymenet according to each payment method. 
SELECT mode ,COUNT(customer_name)
FROM customers
Group BY mode;
-- Group bases on grade 
SELECT grade,COUNT(*) AS students FROM student
group by grade
ORDER BY grade DESC;

                  -- Having Clause -- 
-- Similar to WHERE i.e. applies some condition on rows.
-- Used when we want to apply any condition after groupingj
-- WHERE CONDITION ON rows ,Having Number of conditions on groups   
SELECT city ,count(rollno)
FROM student
-- WHERE max>90  -- koi sense nai kidr dekh rahye hain 
Group by city
Having max(marks)>900;

-- General Order
-- SELECT columns
-- FROM table_name
-- WHERE condition
-- GROUP BY columns
-- Having condition
-- ORDER BY columns ASC;
SELECT city 
FROM student
WHERE grade='A'
GROUP BY city
Having max(marks)>=900
ORDER BY city ASC;



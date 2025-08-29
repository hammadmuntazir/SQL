use college;
create Table employee(
roll_no INT PRIMARY KEY,
first_name varchar(20),
last_name varchar(20),
class    varchar(20),
marks  int,
grade varchar(3)
);
SELECT * FROM employee;
INSERT INTO employee(roll_no,first_name,last_name,class,marks,grade)
Value(1,'hammad','muntazir','12',980,'A+'),(2,'ALi','Ahmad','12',800,'B+');
SELECT * FROM employee;
SELECT roll_no,first_name FROM employee;
SELECT * 
FROM employee
WHERE marks>900;
SELECT * 
FROM employee
ORDER BY roll_no DESC;
SELECT *
FROM employee 
Order BY marks ASC LIMIT 1;
SELECT COUNT(*) AS total_employees FROM employee;
SELECT AVG(marks)AS average_marks FROM employee;
SELECT MAX(marks)AS maximum_marks FROM employee;
SELECT SUM(marks)AS total_marks FROM employee GROUP BY marks;
USE college;
--  SELF JOIN regular join  but table is joined with itself

-- SELECT column
-- FROM table as a
-- JOIN table as b
-- ON a.col_name =b.col_name;

CREATE TABLE employees(
id INT ,
name VARCHAR(20),
manager_id INT);
INSERT INTO employees
VALUE(101,'Ali',103),(102,'bilal',104),(103,'AHMAD',null),(104,'dilawar',103);
SELECT * FROM employees;

SELECT a.name as manager_name ,b.name
FROM employees as a
JOIN employees as b
ON a.id=b.manager_id;
--  query give result from right to left 


         --  UNION
-- used to combine the result-set of two or more select statements
-- GIVE unique order
-- TO use it 1)every SELECT SHOULD have same no.of columns 2)columns must have similar data type 3)columns in every select must in  same order

SELECT name FROM employees
UNION 
SELECT name FROM employees;
-- sary name print ho kr agye hain

   -- UNION duplicate nai dy ga UNion ALL duplicate bi dy ga    
SELECT name FROM employees
UNION ALL
SELECT name FROM employees;
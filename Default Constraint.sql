-- Setting by default value 
CREATE TABLE employee(
id INT,
salary INT DEFAULT 25000);
Insert into employee(id)  Values(101),(102);
SELECT * FROM employee
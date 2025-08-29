--  FORGEIN KEY
-- FOREIGN KEY(dept_id)
-- REFERENCE  
-- dept  
--  Parent Table 
CREATE TABLE dept(
id INT PRIMARY KEY,
NAME VARCHAR(50)
);
SELECT * FROM dept;

-- jis mein foreign key generate kr ra 
CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES dept(id)
);

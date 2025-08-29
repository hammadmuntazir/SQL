--  Cascading for FOREIGN KEY
-- agr aik jaga chnage ho raha hai to dusri jaga bi hoga 
use xyz;
CREATE TABLE dept(
id INT PRIMARY KEY,
name VARCHAR(50)
);
INSERT INTO dept
VALUES(101,'english'),
(102,'IT');
CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES dept(id)
ON UPDATE CASCADE
ON DELETE CASCADE);

INSERT INTO teacher 
VALUES(101,'Ali',101),
(102,'Ahmad',102);
-- agr dept table mein koi change aye gyein to vo changes teacher table mein  bi refelect ho gyein
 SELECT * FROM dept;
 
 UPDATE dept
 SET id=103
 WHere id=102;
 SELECT * FROM teacher;
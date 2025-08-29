-- Check can limit values allowed in a column
CREATE table newTab(
age INT check (age>=18)
);
INSERT INTO newTab(age) Values(19); -- this will added
INSERT INTO newTab(age) Values(17);-- --this will not added 
SELECT * FROM newTab
;
-- Another way of adding Check Constrainty ;
CREATE TABLE city (
id INT PRIMARY KEY,
city VARCHAR(50),
age INT,
CONSTRAINT age CHECK(age>=18 AND city='DELHI')
);

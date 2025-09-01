-- Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.

-- The CITY table is described as follows:
CREATE database hackerrank;
use hackerrank;

CREATE TABLE CITY (
    ID INT,
    NAME VARCHAR(17),
    COUNTRYCODE VARCHAR(3),
    DISTRICT VARCHAR(20),
    POPULATION INT
);
INSERT INTO CITY (ID, NAME, COUNTRYCODE, DISTRICT, POPULATION) VALUES
(3878, 'Scottsdale', 'USA', 'Arizona', 202705),
(3965, 'Corona', 'USA', 'California', 124966),
(3973, 'Concord', 'USA', 'California', 121780),
(3977, 'Cedar Rapids', 'USA', 'Iowa', 120758),
(3982, 'Coral Springs', 'USA', 'Florida', 117549);

-- Query all columns for all American cities in the CITY table with populations larger than 100000. 
-- The CountryCode for America is USA.

SELECT *
FROM CITY 
WHERE COUNTRYCODE='USA' AND POPULATION>100000;
               
                  -- QUERY 2             
-- Query the NAME field for all American cities in the CITY table with populations larger than 120000. 
-- The CountryCode for America is USA.
SELECT NAME,POPULATION FROM CITY
WHERE COUNTRYCODE='USA' AND POPULATION>120000;
             
   -- QUERY 3           
--  Query all columns (attributes) for every row in the CITY table.
SELECT * FROM CITY;

                       -- QUERY 4 
   --  Query all columns for a city in CITY with the ID 1661.
SELECT * FROM 
CITY WHERE ID=1661;
        -- QUERY 5    
--  Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT *
FROM CITY 
WHERE COUNTRYCODE= 'JPN';
                         -- QUERY 5                    
-- Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT NAME 
FROM CITY
WHERE COUNTRYCODE = 'JPN';
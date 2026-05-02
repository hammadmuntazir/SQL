# Write your MySQL query statement below
-- important point compare with previous consecutive date

SELECT 
    a.id
FROM 
    Weather a
INNER JOIN 
    Weather b
ON 
    DATEDIFF(a.recordDate,b.recordDate)=1
WHERE
    a.temperature>b.temperature;

-- Table: Weather

-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | id            | int     |
-- | recordDate    | date    |
-- | temperature   | int     |
-- +---------------+---------+
-- id is the column with unique values for this table.
-- There are no different rows with the same recordDate.
-- This table contains information about the temperature on a certain day.
 

-- Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).

-- Return the result table in any order.

-- The result format is in the following example.

 

-- Example 1:

-- Input: 
-- Weather table:
-- +----+------------+-------------+
-- | id | recordDate | temperature |
-- +----+------------+-------------+
-- | 1  | 2015-01-01 | 10          |
-- | 2  | 2015-01-02 | 25          |
-- | 3  | 2015-01-03 | 20          |
-- | 4  | 2015-01-04 | 30          |
-- +----+------------+-------------+
-- Output: 
-- +----+
-- | id |
-- +----+
-- | 2  |
-- | 4  |
-- +----+
-- Explanation: 
-- In 2015-01-02, the temperature was higher than the previous day (10 -> 25).
-- In 2015-01-04, the temperature was higher than the previous day (20 -> 30).























-- DATEDIFF(date1,date2)
-- -- Returns:date1-date2
-- SELECT DATEDIFF('2024-12-31','2024-12-01')AS diff:

-- SELECT
--       customer_id,
--       visit_date,
--       DATEDIFF(CURDATE(),visit_date)AS days_ago
-- FROM Visits;

-- -- Gap Between Orders
-- SELECT 
--        order_id,
--        order_date,
--        previous_order_date,
--        DATEDIFF(order_date,previous_order_date) AS days_between_orders
-- FROM orders;
-- -- Age Calculation
-- SELECT 
--           name,
--           birth_date,
--           DATEDIFF(CURDATE(),birth_date)/365 AS age_in_years
-- FROM users;

-- -- Find Users who is not active from 30 days
-- SELECT user_id,last_login
-- FROM users
-- WHERE DATEDIFF(CURDATE(),last_login)>30;

-- -- Subscription expiry check
-- SELECT 
--           subscription_id,
--           end_date,
--           DATEDIFF(end_date,CURDATE()) AS days_remaining
-- FROM subscriptions
-- WHERE DATEDIFF(end_date,CURDATE()) BETWEEN 0 AND 7;
-- -- Average gap between purchases
-- SELECT
--         customer_id,
--         AVG(DATEDIFF(next_purchase_date,purchase-date)) AS avg_days_between
-- FROM purchases
-- GROUP BY customer_id;

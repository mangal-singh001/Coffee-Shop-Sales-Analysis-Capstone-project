-- Solve business requirements sql queries 

SELECT * FROM coffee_sales;
 
-- 1.Calculate the total sales for each respective month 


SELECT 
	EXTRACT(MONTH FROM transaction_date) AS month,
	ROUND(SUM(unit_price * transaction_qty)::numeric,2) AS Total_sales
FROM coffee_sales
GROUP BY 1


-- 2.Determine the month-on-month increase or decrease in sales 

WITH monthly_sales AS (
    SELECT 
        EXTRACT(MONTH FROM transaction_date) AS month,
        SUM(unit_price * transaction_qty) AS total_sales
    FROM coffee_sales
    WHERE EXTRACT(MONTH FROM transaction_date) IN (4, 5)
    GROUP BY month
)
SELECT 
    month,
    ROUND(total_sales::numeric, 2) AS total_sales,
    ROUND(
        (
            (total_sales - LAG(total_sales) OVER (ORDER BY month)) 
            / NULLIF(LAG(total_sales) OVER (ORDER BY month), 0) * 100
        )::numeric,
        2
    ) AS mom_increase_percentage
FROM monthly_sales
ORDER BY month;


-- 3.Calculate the difference in sales between the selected month and the previous month 

WITH monthly_sales AS(
	SELECT 
		EXTRACT(MONTH FROM transaction_date) AS month,
		SUM(unit_price * transaction_qty) AS total_sales
	FROM coffee_sales
	WHERE EXTRACT(MONTH FROM transaction_date) IN (4, 5)
	GROUP BY 1
)
SELECT 
	month,
	ROUND(total_sales::numeric,2),
	ROUND(
        (
            (total_sales - LAG(total_sales) OVER (ORDER BY month)) 
           )::numeric,
        2
    ) AS difference_in_sales_from_previous_month
FROM monthly_sales
ORDER BY month


-- 4.Calculate the total number of orders for each respective month 

SELECT 
	EXTRACT(MONTH FROM transaction_date) AS month,
	COUNT(transaction_id) AS total_orders
FROM coffee_sales
GROUP BY 1

-- 5.Determine the month-on-monnth increase in the number of orders. 


WITH monthly_orders AS (
    SELECT 
        EXTRACT(MONTH FROM transaction_date) AS month,
        COUNT(transaction_id) AS total_orders
    FROM coffee_sales
    WHERE EXTRACT(MONTH FROM transaction_date) IN (4, 5)
    GROUP BY month
)
SELECT 
    month,
    ROUND(total_orders::numeric, 2) AS total_orders,
    ROUND(
        (
            (total_orders - LAG(total_orders) OVER (ORDER BY month))::numeric 
            / NULLIF(LAG(total_orders) OVER (ORDER BY month)::numeric, 0) * 100
        )::numeric,
        2
    ) AS mom_increase_percentage
FROM monthly_orders
ORDER BY month;


-- 6.Calculate the difference in the number of orders between the selected month and the previous month 


WITH monthly_orders AS (
    SELECT 
        EXTRACT(MONTH FROM transaction_date) AS month,
        COUNT(transaction_id) AS total_orders
    FROM coffee_sales
    WHERE EXTRACT(MONTH FROM transaction_date) IN (4, 5)
    GROUP BY month
)
SELECT 
    month,
    ROUND(total_orders::numeric, 2) AS total_orders,
    ROUND(
        (
            (total_orders - LAG(total_orders) OVER (ORDER BY month))::numeric 
        )::numeric,
        2
    ) AS mom_increase_percentage
FROM monthly_orders
ORDER BY month;



-- 7.Calculate the total quantity sold for each respective month 

SELECT 
	EXTRACT(MONTH FROM transaction_date) AS month,
	SUM(transaction_qty) AS total_quantity
FROM coffee_sales
GROUP BY 1

-- 8.Determine the month-on-monnth increase or decrease in the total quantity sold.


WITH monthly_quantity AS (
    SELECT 
        EXTRACT(MONTH FROM transaction_date) AS month,
        SUM(transaction_qty) AS total_quantity
    FROM coffee_sales
    WHERE EXTRACT(MONTH FROM transaction_date) IN (4, 5)
    GROUP BY month
)
SELECT 
    month,
    ROUND(total_quantity::numeric, 2) AS total_quantity,
    ROUND(
        (
            (total_quantity - LAG(total_quantity) OVER (ORDER BY month))::numeric 
            / NULLIF(LAG(total_quantity) OVER (ORDER BY month)::numeric, 0) * 100
        )::numeric,
        2
    ) AS mom_increase_percentage
FROM monthly_quantity
ORDER BY month;



-- 9.Calculate the difference in the total quantity sold  between the selected month and the previous month



WITH monthly_quantity AS (
    SELECT 
        EXTRACT(MONTH FROM transaction_date) AS month,
        SUM(transaction_qty) AS total_quantity
    FROM coffee_sales
    WHERE EXTRACT(MONTH FROM transaction_date) IN (4, 5)
    GROUP BY month
)
SELECT 
    month,
    ROUND(total_quantity::numeric, 2) AS total_quantity,
    ROUND(
        (
            (total_quantity - LAG(total_quantity) OVER (ORDER BY month))::numeric 
        )::numeric,
        2
    ) AS mom_increase_percentage
FROM monthly_quantity
ORDER BY month;


-- Find Total_sales, Total Quantity sold and Total orders on the specific date 

SELECT 
	CONCAT(ROUND(SUM(unit_price * transaction_qty)::numeric / 1000,1),'K') AS total_sales,
	CONCAT(ROUND(SUM(transaction_qty)::numeric / 1000, 1), 'K') AS total_qty_sold,
	CONCAT(ROUND(COUNT(transaction_id)::numeric / 1000, 1), 'K') AS total_orders
FROM coffee_sales
WHERE 
	transaction_date = '2023-01-18'



select 
	sum(transaction_qty),
	count(transaction_id)
from coffee_sales
where 
	transaction_date = '2023-05-18'


-- Find sales in weekdays and weekends 

SELECT 
    CASE 
        WHEN EXTRACT(DOW FROM transaction_date) IN (0, 6) THEN 'Weekends'
        ELSE 'Weekdays'
    END AS day_type,
    CONCAT(ROUND(SUM(unit_price * transaction_qty)::numeric / 1000,1),'K') AS total_sales
FROM coffee_sales
WHERE EXTRACT(MONTH FROM transaction_date) = 5
GROUP BY day_type;



-- Finds sales for each location 


SELECT 
	store_location, 
	CONCAT(ROUND(SUM(unit_price * transaction_qty)::numeric / 1000,1),'K') AS total_sales
FROM coffee_sales
WHERE 
	EXTRACT(MONTH FROM transaction_date) = 6
GROUP BY 1
ORDER BY SUM(unit_price * transaction_qty) DESC


 
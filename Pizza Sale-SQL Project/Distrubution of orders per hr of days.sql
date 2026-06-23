-- Determine the distribution of orders by hour of the day.

-- we have time in orders table :

-- select * from orders;

SELECT 
    HOUR(Order_Time) AS hours, COUNT(order_ID) AS order_count
FROM
    orders
GROUP BY Order_Time
ORDER BY COUNT(order_ID) DESC;

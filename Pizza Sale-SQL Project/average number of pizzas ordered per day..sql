-- Group the orders by date and calculate the average number of pizzas ordered per day.

-- avg no of pizza orders ?

-- we have order_time in orders table and quantity from order_detail table so need to join both table
-- using sub query here


SELECT 
    round(AVG(quantity),2) as avg_pizza_order_per_day
FROM
    (SELECT 
        orders.Order_Time, SUM(orders_detail.Quantity) AS quantity
    FROM
        orders
    JOIN orders_detail ON orders.Order_ID = orders_detail.Order_ID
    GROUP BY orders.Order_Time) AS order_quantity;
-- Calculate the percentage contribution of each pizza type to total revenue.

-- show databases;
-- use pizzahut;


SELECT 
    pizza_types.name,
    ROUND(
        SUM(orders_detail.quantity * pizzas.price) /
        (
            SELECT SUM(orders_detail.quantity * pizzas.price)
            FROM orders_detail
            JOIN pizzas
                ON pizzas.pizza_id = orders_detail.pizza_id
        ) * 100,
        2
    ) AS Revenue_Percentage
FROM pizza_types
JOIN pizzas
    ON pizza_types.pizza_type_id = pizzas.pizza_type_id
JOIN orders_detail
    ON orders_detail.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.name
ORDER BY Revenue_Percentage DESC
LIMIT 3;
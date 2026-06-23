
-- List the top 5 most ordered pizza type along with their quantities

-- here we are using 3 tables because data we want is available in 3 diffrent table and there is no common table in 3 

-- Here we are using sum(orders_detail.Quantity) so when u take sum of any then need to use group by

SELECT pizza_types.name,
       SUM(orders_detail.Quantity) AS top_pizza
FROM pizza_types
JOIN pizzas
    ON pizza_types.pizza_type_id = pizzas.pizza_type_id
JOIN orders_detail
    ON orders_detail.Pizza_ID = pizzas.pizza_id
GROUP BY pizza_types.name
ORDER BY top_pizza DESC
LIMIT 5;
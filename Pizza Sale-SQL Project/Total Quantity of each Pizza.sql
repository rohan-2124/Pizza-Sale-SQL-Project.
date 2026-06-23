-- Join the necessary tables to find the total quantity of each pizza category ordered.

SELECT 
    pizza_types.category,
    SUM(orders_detail.Quantity) AS quantity
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    orders_detail ON orders_detail.Pizza_ID = pizzas.pizza_id
GROUP BY pizza_types.category
ORDER BY Quantity DESC;
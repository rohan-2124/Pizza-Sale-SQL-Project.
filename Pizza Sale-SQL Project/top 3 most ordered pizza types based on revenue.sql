-- Determine the top 3 most ordered pizza types based on revenue.

-- if columns is aggrigate then use group by arrgigate mean sum,avg,min,max.

SELECT 
    pizza_types.name,
    SUM(orders_detail.Quantity * pizzas.price) AS Revenue
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizza_types.pizza_type_id
        JOIN
    orders_detail ON orders_detail.Pizza_ID = pizzas.pizza_id
GROUP BY pizza_types.name
ORDER BY Revenue DESC
LIMIT 3;
-- Ques : 4 Identify the most ordered pizza size ?

SELECT 
    pizzas.size,
    COUNT(orders_detail.Order_Detail) AS order_count
FROM
    pizzas
        JOIN
    orders_detail ON pizzas.pizza_id = orders_detail.Pizza_ID
GROUP BY pizzas.size
ORDER BY order_count DESC
LIMIT 1;


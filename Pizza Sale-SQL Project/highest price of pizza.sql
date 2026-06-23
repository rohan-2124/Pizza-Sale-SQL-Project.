-- Question 3 : Identify highest price of pizza 

--  we are using join here , when we said oin it means inner joins

SELECT 
    pizza_types.name, pizzas.price
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
ORDER BY pizzas.price
LIMIT 1;


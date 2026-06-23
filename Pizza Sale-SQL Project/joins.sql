-- Question 2 : calculate totlal revenue genraeted from pizza sale

-- revenue = quantity * price

-- we have quantity and price columns but both are in diffrent table so we are using join here

-- select 
-- ordes_detail.Quantity * pizzas.price
-- from orders_detail join pizzas
-- on pizzas.pizza_id = orders_detail.pizza_id;

-- Press control + B for beautify query

SELECT 
    ROUND(SUM(orders_detail.Quantity * pizzas.price),
            2) AS Total_Revenue
FROM
    orders_detail
        JOIN
    pizzas ON pizzas.pizza_id = orders_detail.pizza_id;

 

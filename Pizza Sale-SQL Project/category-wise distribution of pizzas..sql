-- Join relevant tables to find the category-wise distribution of pizzas.

-- SELECT 
--     *
-- FROM
--     pizza_types;

SELECT 
    category, COUNT(name)
FROM
    pizza_types
GROUP BY category;
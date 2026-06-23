-- Q1 : Retrive total number of Orders placed ?

select * from orders;

-- select Count(*) Order_ID from orders;  show count of orders id

select count(order_ID) as Total_Order from orders;
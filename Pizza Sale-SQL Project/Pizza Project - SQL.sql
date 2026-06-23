SELECT * FROM pizza.pizzas;

create table Orders (
Order_Id int Not Null primary key,
Order_Date datetime Not Null,
Order_Time time Not Null
);

/*Drop table order_id ; */

select * from Orders;

create table Order_Details (
Order_Details_ID int not null Primary key ,
Order_Id int Not Null ,
Pizza_Id text Not Null ,
Quantiy int Not Null ,
Order_Time time Not Null
);



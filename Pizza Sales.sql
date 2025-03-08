-- Retrieve the total number of orders placed.
select count(Order_ID) as Total_Orders from orders;

-- Calculate the total revenue generated from pizza sales.
SELECT 
    ROUND(SUM(order_details.Quantity * pizzas.price),
            2) AS Total_Sales
FROM
    order_details
        JOIN
    pizzas ON pizzas.pizza_ID = order_details.pizza_ID


-- Identify the highest-priced pizza.
SELECT 
    pizza_types.name, pizzas.price
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
ORDER BY price DESC
LIMIT 1;

-- Identify the most common pizza size ordered.
SELECT 
    pizzas.size,
    COUNT(order_details.Order_Detail_ID) AS order_count
FROM
    order_details
        JOIN
    pizzas ON pizzas.pizza_ID = order_details.pizza_ID
GROUP BY pizzas.size
ORDER BY size

-- List the top 5 most ordered pizza types along with their quantities.
SELECT 
    pizza_types.name, SUM(order_details.quantity) AS quantity
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON order_details.Pizza_ID = pizzas.pizza_id
GROUP BY pizza_types.name
ORDER BY quantity DESC
LIMIT 5;

-- Join the necessary tables to find the total quantity of each pizza category ordered.
SELECT 
    pizza_types.category,
    SUM(order_details.Quantity) AS quantity
FROM
    order_details
        JOIN
    pizzas ON order_details.Pizza_ID = pizzas.pizza_id
        JOIN
    pizza_types ON pizzas.pizza_type_id = pizza_types.pizza_type_id
GROUP BY category
ORDER BY Quantity DESC;

-- Determine the distribution of orders by hour of the day.
SELECT 
    HOUR(Order_Time) AS Hours, COUNT(Order_ID)
FROM
    orders
GROUP BY Hours;

-- Join relevant tables to find the category-wise distribution of pizzas.
SELECT 
    category, COUNT(name) AS name
FROM
    pizza_types
GROUP BY category;

-- Group the orders by date and calculate the average number of pizzas ordered per day.
SELECT 
    round(Avg(Quantity),0)
FROM
    (SELECT 
        orders.Order_Date, SUM(order_details.Quantity) AS Quantity
    FROM
        orders
    JOIN order_details ON order_details.Order_ID = orders.Order_ID
    GROUP BY orders.Order_Date) AS order_quantity;


-- Determine the top 3 most ordered pizza types based on revenue.
SELECT 
    pizza_types.name,
    SUM(order_details.Quantity * pizzas.price) AS revenue
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON order_details.Pizza_ID = pizzas.pizza_id
GROUP BY pizza_types.name
ORDER BY revenue DESC
LIMIT 3;

-- Calculate the percentage contribution of each pizza type to total revenue.
SELECT 
    pizza_types.category,
    ROUND(SUM(order_details.Quantity * pizzas.price) / (SELECT 
                    ROUND(SUM(order_details.Quantity * pizzas.price),
                                2) AS Total_Sales
                FROM
                    order_details
                        JOIN
                    pizzas ON pizzas.pizza_ID = order_details.pizza_ID) * 100,
            2) AS revenue
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON order_details.Pizza_ID = pizzas.pizza_id
GROUP BY pizza_types.category
ORDER BY revenue DESC


-- Analyze the cumulative revenue generated over time.
select Order_Date,
sum(revenue) over(order by Order_Date) as cum_revenue
from
(select orders.Order_Date,
SUM(order_details.Quantity * pizzas.price) as Revenue
from order_details join pizzas
on order_details.Pizza_ID = pizzas.pizza_id
join orders 
on orders.Order_ID= order_details.Order_ID
group by orders.Order_Date) as Sales;

-- Determine the top 3 most ordered pizza types based on revenue for each pizza category.
select Name,Revenue from
(select Category,Name,Revenue,
rank() over(partition by Category order by Revenue desc) as Rn
from
(select pizza_types.category, pizza_types.name , 
sum((order_details.Quantity)* pizzas.price) as revenue 
from pizza_types join pizzas
on pizza_types.pizza_type_id= pizzas.pizza_type_id
join order_details
on order_details.Pizza_ID= pizzas.pizza_id
group by pizza_types.category, pizza_types.name) as A)as B
where Rn <=3;



-- SQL Queries 

-- Display first 5 rows
SELECT * FROM orders LIMIT 5

-- Total Sales & Profit
select sum(sales) as total_sales , sum(profit) as total_profit from orders

--Sales by Region/
select  region ,sum(sales) as revenue from orders group by region order by revenue desc

--Top Customers
select  customer_name ,sum(sales) as Sales_amount from orders group by customer_name order by Sales_amount desc limit 10

--Sales by Category
select category, sum(sales) as total_sales from orders group by category order by total_sales desc

--Profit by Category
select category, sum(profit) as total_profits from orders group by category order by total_profits desc

-- Monthly Sales Trend
select strftime('%Y-%m', order_date) as month, sum(sales) as total_sales from orders group by month order by month


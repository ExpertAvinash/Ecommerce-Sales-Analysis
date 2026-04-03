-- Total sales and profits
SELECT
	SUM(sales) AS total_sales,
	SUM(profit) AS total_profit,
	AVG(discount) AS avg_discount
FROM orders;

-- Region wise Sales and Profit
SELECT
	l.region,
	SUM(o.sales) AS total_sales,
	SUM(o.profit) AS total_profit
FROM orders o
JOIN location l 
On o.location_id = l.location_id
GROUP BY region
ORDER BY total_sales DESC; 

-- Loss Making regions
SELECT
	l.region,
	SUM(o.profit) AS total_loss
FROM orders o
JOIN location l
ON o.location_id = l.location_id
where o.profit<0
GROUP BY region
ORDER BY total_loss ASC;

-- Category Wise Performance
SELECT 
	p.category,
	SUM(o.sales) AS total_sales,
	SUM(o.profit) AS total_profit
FROM orders o
JOIN products p 
ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY p.category DESC;

-- Loss Making sun-categories
SELECT 
	p.sub_category,
	SUM(o.sales) AS total_sales,
	SUM(o.profit) AS total_profit
FROM orders o
JOIN products p 
ON o.product_id = p.product_id
where o.profit<0
GROUP BY p.sub_category
ORDER BY total_profit ASC
LIMIT 5;

-- Discount Impact
SELECT 
    CASE 
        WHEN profit < 0 THEN 'Loss'
        ELSE 'Profit'
    END AS status,
    AVG(discount) AS avg_discount
FROM orders
GROUP BY status;

-- Top Customers
SELECT 
	c.customer_id,
	c.customer_name,
	SUM(o.sales) AS total_sale
FROM orders o 
join customers c
ON o.customer_id = c.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_sale DESC
LIMIT 10;

-- Customers total Contribution
SELECT SUM(sales) FROM Orders;

-- Segment Wise Analysis
SELECT 
	c.segment,
	SUM(o.sales) AS total_sales,
	SUM(o.profit) AS Total_profit
FROM orders o 
JOIN customers c
ON o.customer_id = c.customer_id
GROUP BY c.segment;

-- Monthly sales Analysis
SELECT 
    TO_CHAR(order_date, 'MM') AS month,
    SUM(sales) AS total_sales
FROM orders
GROUP BY month
ORDER BY total_sales desc;

-- Shipping Analysis 
SELECT 
	s.ship_mode,
	AVG(o.ship_date - o.order_date) AS AVG_delivery_days
FROM orders o
JOIN shipping s
ON o.ship_id = s.ship_id
GROUP BY s.ship_mode;


-- Profit Margin By Category
SELECT 
	p.category,
	sum(o.sales)/sum(o.profit) as profit_margin
FROM orders o
JOIN products p
ON o.product_id = p.product_id
GROUP BY p.category;

-- TOP vs BOTTOM Products
SELECT
	p.product_id,
	p.product_name,
	SUM(o.sales) AS Product_sales
FROM orders o
JOIN products p
ON o.product_id = p.product_id
GROUP BY p.product_id,p.product_name
ORDER BY sum(o.sales) DESC
LIMIT 5;

-- High Sales but loss
SELECT 
	p.product_id,
	p.product_name,
	SUM(o.sales) AS total_sales,
	sum(o.profit) AS total_profit
FROM orders o
JOIN products p
ON o.product_id = p.product_id
GROUP BY p.product_id,p.product_name
HAVING SUM(o.sales)>10000 AND SUM(o.profit)<0
ORDER BY total_profit DESC;
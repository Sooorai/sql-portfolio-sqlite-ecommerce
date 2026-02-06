/*
   SQL Portfolio Queries (SQLite)
   Dataset: customers, orders
   Notes:
   - order_date is assumed to be stored as 'YYYY-MM-DD'
   - Month is derived as 'YYYY-MM' using substr(order_date, 1, 7)
*/


--Monthly Sales Trend
SELECT
  substr(order_date, 1, 7) AS month,
  SUM(total_amount)        AS total_sales
FROM orders
GROUP BY month
ORDER BY month;


--Customer Revenue Ranking
SELECT
  c.customer_id,
  c.name,
  COUNT(o.order_id)        AS order_count,
  SUM(o.total_amount)      AS total_spent
FROM customers AS c
JOIN orders    AS o
  ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
ORDER BY total_spent DESC;


--Monthly Revenue by Customer
SELECT
  substr(o.order_date, 1, 7) AS month,
  c.customer_id,
  c.name,
  SUM(o.total_amount)        AS total_spent
FROM customers AS c
JOIN orders    AS o
  ON c.customer_id = o.customer_id
GROUP BY month, c.customer_id, c.name
ORDER BY month, total_spent DESC;

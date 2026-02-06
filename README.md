# SQL Portfolio (SQLite) — E-commerce Sales Analysis

This project demonstrates my ability to build a small relational database in SQLite and write SQL queries for business analysis, including aggregation, ranking, and trend analysis.

---

## Project Summary

**Goal:** Analyze sales performance and customer revenue using SQL.

**What I did:**
- Built a relational SQLite database with `customers` and `orders` tables
- Imported sample data via CSV
- Wrote SQL queries using `SELECT`, `WHERE`, `ORDER BY`, `GROUP BY`, and `JOIN`
- Derived monthly metrics using `substr(order_date, 1, 7)` (SQLite-specific)

---

## Dataset

**Tables**
- `customers(customer_id, name, country, signup_date)`
- `orders(order_id, customer_id, order_date, total_amount)`

**Assumptions**
- `order_date` is stored in ISO format (`YYYY-MM-DD`)
- Monthly grouping is based on `YYYY-MM` extracted from `order_date`

---

## Key Analysis Queries

### 1) Monthly Sales Trend
**Question:** What is the total revenue per month?

**Approach:**
- Extract year and month from `order_date`
- Aggregate total sales using `SUM`

**Output Columns:**
- `month`
- `total_sales`

---

### 2) Customer Revenue Ranking
**Question:** Who are the top customers by total revenue?

**Approach:**
- Join `customers` and `orders` on `customer_id`
- Calculate order count and total revenue per customer
- Rank customers by total spending (descending)

**Output Columns:**
- `customer_id`
- `name`
- `order_count`
- `total_spent`

---

### 3) Monthly Revenue by Customer
**Question:** How much did each customer spend each month?

**Approach:**
- Join customer and order data
- Group results by month and customer
- Sort by month and revenue

**Output Columns:**
- `month`
- `customer_id`
- `name`
- `total_spent`

---

## Tools Used
- SQLite
- DB Browser for SQLite

---

## Skills Demonstrated
- SQL querying (`SELECT`, `WHERE`, `ORDER BY`)
- Aggregations (`SUM`, `COUNT`, `GROUP BY`)
- Relational joins (`JOIN`)
- Time-based analysis (monthly aggregation)
- Translating business questions into SQL queries

---

## Files
- `queries.sql` — Final SQL queries used in this analysis

---

## About Me
- Background: Computer Science student at Seikei University
- Current location: UK (Working Holiday)
- English level: B2
- Target roles: Data Analyst Assistant / Junior Data Analyst

---

## Contact
- GitHub: https://github.com/Sooorai

# ⚡ Zepto-Insight: Quick-Commerce Business Analysis (SQL)

<p align="center">
  <img src="https://img.shields.io/badge/Database-MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL">
  <img src="https://img.shields.io/badge/Analysis-SQL_Queries-orange?style=for-the-badge" alt="SQL">
  <img src="https://img.shields.io/badge/Industry-Quick--Commerce-yellow?style=for-the-badge" alt="Retail">
</p>

**Zepto-Insight** is a comprehensive SQL-based business intelligence project that simulates a Quick-Commerce ecosystem. By analyzing datasets covering Customers, Orders, Deliveries, and Ratings, this project extracts critical KPIs to drive operational efficiency and revenue growth.



---

## 🎯 Business Challenges Solved
I've designed complex SQL queries to answer high-stakes business questions:
* **Revenue Analytics:** Which product categories are driving 80% of the revenue? (Pareto Analysis)
* **Logistics Efficiency:** What is the average delivery lag, and which zones have the most delays?
* **Customer Retention:** Who are our "Power Users" (ordered > 5 times in 30 days)?
* **Temporal Trends:** Identifying peak ordering windows to optimize delivery partner staffing.

---

## 🧠 Advanced SQL Techniques Used
This project isn't just about simple queries. It demonstrates mastery in:
* **Window Functions:** For ranking top customers and calculating running totals.
* **CTEs (Common Table Expressions):** For breaking down complex logic into readable blocks.
* **Joins & Aggregations:** Multi-table joins across 6+ entities.
* **Case Statements:** For segmenting customers and categorizing delivery speeds.



---

## 📊 Data Schema
The analysis is performed across a normalized schema:
* `customers`: Demographic data and sign-up info.
* `orders` & `transactions`: Core sales and payment data.
* `products`: Catalog and category hierarchies.
* `delivery`: Real-time tracking of dispatch and delivery timestamps.
* `ratings`: Qualitative feedback for sentiment analysis.

---

## 📈 Sample Insight: Delivery Performance
```sql
-- Calculating average delivery time per city to identify bottlenecks
SELECT 
    city, 
    AVG(TIMESTAMPDIFF(MINUTE, order_time, delivery_time)) AS avg_delivery_mins
FROM delivery d
JOIN customers c ON d.customer_id = c.id
GROUP BY city
ORDER BY avg_delivery_mins DESC;

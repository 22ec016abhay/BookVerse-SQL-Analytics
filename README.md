# 📚 BookVerse — SQL Analytics & Business Insights

A PostgreSQL-based SQL analytics project exploring customer purchasing behavior, book performance, revenue trends, inventory, and business performance for a simulated online bookstore.

The project contains **24 SQL analyses** covering joins, aggregations, CASE expressions, subqueries, CTEs, window functions, ranking, revenue analysis, customer segmentation, and business-oriented insights.

---

## 🎯 Business Problem

BookVerse is a simulated online bookstore with customers, books, and order transactions.

The goal of this project is to use SQL to answer practical business questions such as:

* Which books generate the most revenue?
* Which genres contribute the most revenue?
* Who are the highest-value customers?
* Which customers purchase across multiple genres?
* What is the average order value for each customer?
* Which authors sell the most books?
* Which books have never been ordered?
* How much stock remains after fulfilling orders?
* How does revenue change month by month?
* Which books are the top sellers within each genre?
* Which customers spend above the average customer?
* How much does each genre contribute to total revenue?

The project focuses on turning transactional data into **business-relevant insights using SQL**.

---

## 🛠️ Tech Stack

* **PostgreSQL**
* **SQL**
* Relational database concepts
* Window functions
* CTEs
* Subqueries
* Aggregations
* JOINs

---

## 📊 Database Structure

The analysis uses three primary tables:

### Customers

Contains customer information.

Typical fields include:

* `customer_id`
* `name`

### Books

Contains book information.

Typical fields include:

* `book_id`
* `title`
* `author`
* `genre`
* `price`
* `stock`

### Orders

Contains transaction-level purchasing information.

Typical fields include:

* `order_id`
* `customer_id`
* `book_id`
* `quantity`
* `total_amount`
* `order_date`

The tables are connected through customer and book identifiers, allowing transactional analysis across customers, products, and orders.

---

# 🔎 SQL Analysis

The project contains 24 analytical queries organized into several categories.

## 1. JOIN Analysis

Examples include:

* Combining orders with customer and book information
* Finding the top 5 revenue-generating books
* Identifying customers who purchased books from multiple genres

These queries demonstrate the use of `INNER JOIN`, `LEFT JOIN`, grouping, and multi-table analysis.

---

## 2. Aggregate Analysis

The project calculates:

* Average order value by customer
* Books sold by author
* Revenue by genre
* Total customer spending

Techniques used include:

* `SUM()`
* `AVG()`
* `COUNT()`
* `COUNT(DISTINCT)`
* `GROUP BY`
* `HAVING`

---

## 3. Customer Segmentation

Customers are classified according to their historical spending:

* **Premium** — spending ≥ 1000
* **Regular** — spending ≥ 500
* **Occasional** — spending < 500

This demonstrates the use of SQL `CASE` expressions to convert numerical measures into business categories.

---

## 4. Subqueries

Subqueries are used to answer questions such as:

* Which books are priced above the overall average?
* Which customers spend more than the average customer?

These analyses demonstrate nested aggregation and comparison against calculated benchmarks.

---

## 5. Business Analysis

The project includes practical business questions such as:

### Inventory

Calculates remaining stock after accounting for fulfilled order quantities.

### Customer Revenue

Identifies the customer generating the highest historical revenue.

### Unordered Books

Identifies books that have never appeared in an order.

These queries demonstrate how SQL can support operational and commercial decision-making.

---

# 📈 Window Functions

Window functions are used extensively for ranking and analytical comparisons.

Examples include:

### Customer ranking

Ranks customers by total spending using:

```sql
DENSE_RANK()
```

### Genre-level book ranking

Ranks books by price within each genre using:

```sql
DENSE_RANK() OVER (
    PARTITION BY genre
    ORDER BY price DESC
)
```

### Order ranking

Demonstrates the difference between:

* `ROW_NUMBER()`
* `RANK()`
* `DENSE_RANK()`

### Running revenue

Calculates cumulative revenue over time using:

```sql
SUM(total_amount) OVER (
    ORDER BY order_date
)
```

These queries demonstrate both SQL syntax knowledge and analytical use of window functions.

---

# 🧩 CTE Analysis

Common Table Expressions are used to make multi-step analysis easier to read and maintain.

Examples include:

* Calculating customer spending before comparing it against average spending
* Calculating genre revenue before identifying the highest-revenue genre

Techniques demonstrated:

* `WITH`
* Aggregated CTEs
* CTE-based filtering
* Combining CTEs with subqueries

---

# 🚀 Advanced Business Analysis

The project also includes more advanced business-oriented queries.

### Top-selling book in each genre

Ranks books within each genre based on quantity sold and returns the highest-ranked book.

### Revenue contribution by genre

Calculates each genre's revenue and its percentage contribution to total revenue.

### Monthly revenue trend

Aggregates revenue by month to identify changes in sales over time.

### Top 3 customers

Ranks customers by total spending and returns the top three.

### Historical customer lifetime revenue

Calculates:

* Total orders
* Total historical spending
* Average order value

> **Note:** This metric represents historical customer revenue/spend based on the available transaction data. It is not a predictive Customer Lifetime Value (CLV) model.

---

# 💡 Key SQL Concepts Demonstrated

This project demonstrates practical use of:

* `INNER JOIN`
* `LEFT JOIN`
* `GROUP BY`
* `HAVING`
* `CASE`
* `COALESCE`
* Aggregate functions
* Subqueries
* CTEs
* `DATE_TRUNC`
* `ROW_NUMBER()`
* `RANK()`
* `DENSE_RANK()`
* `PARTITION BY`
* Running totals
* Revenue contribution analysis
* Customer segmentation
* Benchmark comparisons

---

# 📁 Suggested Repository Structure

```text
BookVerse-SQL-Analytics/
│
├── README.md
├── schema.sql
├── data/
│   ├── customers.csv
│   ├── books.csv
│   └── orders.csv
│
└── sql/
    └── bookverse_analysis.sql
```

---

# 🎯 Project Objective

The primary objective of BookVerse was to move beyond practicing isolated SQL commands and instead use SQL to solve realistic business questions.

The project demonstrates how transactional data can be transformed into insights around:

**Customers → Products → Revenue → Inventory → Business Performance**

---

## ⚠️ Dataset Note

BookVerse uses simulated data for portfolio and learning purposes. The results demonstrate SQL analysis techniques and business reasoning rather than representing a real bookstore's performance.

---

## 👨‍💻 Author

**Abhay Pareek**

Built as a portfolio project to strengthen practical SQL, PostgreSQL, relational database analysis, and business analytics skills.

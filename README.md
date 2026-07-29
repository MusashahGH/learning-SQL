# 📊 SQL Learning Journey
> ⭐ **Found this project interesting?** Drop a star — it means a lot and keeps me motivated to build more cool stuff!

This repository documents my hands-on journey learning SQL (MySQL) — from basic table creation to advanced concepts like joins, subqueries, views, stored procedures, and triggers.

## 🎯 Purpose

I'm building this repo as I work toward becoming a **Data Analyst**. Every file here reflects real concepts I practiced in MySQL Workbench, with inline comments explaining the "why" behind each query.

## 🛠️ Tools Used

- MySQL Workbench
- MySQL 8.x

## 📁 Repository Structure

| File | Topics Covered |
|------|----------------|
| `SQL_Practice.sql` | Core practice file — table creation/altering, WHERE, UPDATE, DELETE, constraints, aggregate & string/date functions, subqueries, GROUP BY/HAVING/ROLLUP, joins, views, indexes, stored procedures, triggers, wildcards |
| `Sample_data_practice.sql` | Sample user data used to populate the `users` table |
| `sql_FK_example_Table_.sql` | Foreign key relationship example — `addresses` table linked to `users` |
| `sql_admin_sample_Table.sql` | Secondary table (`admin_users`) used to practice UNION/UNION ALL |
| `sql_userlog_sample_Table.sql` | `user_log` table used to practice triggers |

## 📚 Topics Covered So Far

**Table Basics**
- CREATE, RENAME, ALTER (ADD/DROP/MODIFY columns, reordering columns)

**Data Manipulation**
- INSERT, UPDATE, DELETE (with safe update mode handling)

**Filtering & Sorting**
- WHERE, BETWEEN, IN, LIKE (wildcards), ORDER BY, LIMIT/OFFSET

**Constraints**
- NOT NULL, UNIQUE, DEFAULT, CHECK, FOREIGN KEY (with ON DELETE CASCADE)

**Functions**
- Aggregate: COUNT, MIN, MAX, SUM, AVG
- String/Date: CONCAT, LOWER, LENGTH, DAY, DATEDIFF
- Other: MOD, IF (conditional logic)

**Grouping**
- GROUP BY, HAVING, WITH ROLLUP (subtotals & grand totals)

**Joins**
- INNER JOIN, LEFT/RIGHT JOIN, SELF JOIN, UNION / UNION ALL

**Subqueries**
- Nested SELECT statements for filtering and comparison

**Views**
- CREATE VIEW, CREATE OR REPLACE VIEW, DROP VIEW

**Indexes**
- CREATE INDEX / CREATE UNIQUE INDEX for faster lookups

**Stored Procedures**
- CREATE PROCEDURE, CALL, DROP PROCEDURE

**Triggers**
- AFTER INSERT triggers to auto-log actions into `user_log`

**Transactions**
- autocommit, COMMIT, ROLLBACK

## 🚀 How to Use

Each `.sql` file can be run directly in MySQL Workbench. Most lines are commented out intentionally — uncomment the section you want to run to see it in action. Files are written like personal notes, so they double as revision material.

## 📌 Status

🟢 Actively updated as I continue learning new SQL concepts.

## 🔗 Connect

- GitHub: [MusashahGH](https://github.com/MusashahGH)
- LinkedIn: [Musa Shah](https://linkedin.com/in/musa-shah-6244a341a/)

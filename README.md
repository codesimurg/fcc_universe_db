# 🌌 Universe Database – FreeCodeCamp SQL Project

This project is part of the [FreeCodeCamp Relational Database Certification](https://www.freecodecamp.org/learn). It showcases basic SQL skills: creating a database, designing tables, inserting data, and running queries in PostgreSQL.

## 🔧 Technologies Used
- PostgreSQL
- SQL (DDL, DML)
- Gitpod (Cloud IDE)
- Git & GitHub

## 🗃️ Project Structure
- `01-create-database.sql`: Create and connect to the `universe` database
- `02-create-tables.sql`: Define schema for `galaxy`, `star`, `planet`, etc.
- `03-insert-data.sql`: Populate tables with sample data
- `04-queries.sql`: Example queries for selection, joins, and conditions

## 📝 Learning Goals
- Understand database normalization
- Use primary/foreign keys
- Practice JOINs and subqueries
- Structure SQL code in logical stages

## 📸 Sample Output
```sql
SELECT name FROM planet WHERE has_life = true;
-- Earth
-- Kepler-442b

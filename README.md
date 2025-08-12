# SQL_Project

## Project Overview

This project demonstrates practical SQL skills through the design and implementation of a simple e-commerce database schema. It includes:

- A normalized relational schema with Customers, Products, Orders, and Order_Items tables.
- Seed data to simulate real-world scenarios.
- Example queries illustrating basic and advanced SQL operations.
- Optional Python automation (`run.py`) to create and populate the database and execute queries automatically.

## Schema Diagram

![Schema Diagram](./schema_diagram.png)  
*(Create a simple ER diagram with any free tool, save as schema_diagram.png in repo root.)*

### Tables

- **customers:** Stores customer details.
- **products:** Product catalog with prices.
- **orders:** Customer orders with dates.
- **order_items:** Items and quantities in each order.

## Setup & Usage

### Prerequisites

- SQLite installed or any compatible SQL engine.
- Python 3 (if using automation).

### Manual Setup

1. Create the database and tables:

   ```bash
   sqlite3 library.db < schema.sql

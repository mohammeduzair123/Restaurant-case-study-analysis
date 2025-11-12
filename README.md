#  Restaurant Database Project (SQL)

## Project Overview
This project explores a **restaurant database** using **SQL queries** to analyze menu data, order details, and customer spending patterns.  
It demonstrates key **data analysis techniques** using SQL functions such as aggregation, filtering, joining, and grouping.

---

## Database Structure

The project uses two main tables:

1. **`menu_items`**
   - Contains details of each menu item offered by the restaurant.
   - **Columns:**  
     `menu_item_id`, `item_name`, `category`, `price`

2. **`order_details`**
   - Contains details of all customer orders.
   - **Columns:**  
     `order_details_id`, `order_id`, `order_date`, `order_time`, `item_id`

---

## Features & Queries

### Menu Analysis
- View all menu items  
- Count total menu items  
- Identify least and most expensive items  
- Find number of Italian dishes  
- Determine average price per category  

### Order Analysis
- Explore order details and date range  
- Count total and distinct orders  
- Find orders with the most items  
- Identify orders with more than 12 items  

### Combined Analysis
- Join `menu_items` and `order_details`  
- Find the most and least ordered dishes  
- Determine top 5 highest spending orders  
- Analyze top order details by category  

---
## Sample Insights
- Identify top-selling categories and items  
- Compare category-wise average prices  
- Observe spending behavior and order volume  

---- 

## Tools Used
- **Database:** MySQL  
- **Language:** SQL  
- **Environment:** Any SQL-supported IDE (MySQL Workbench, XAMPP, etc.)

---

## How to Use
1. Create a database:
   ```sql
   CREATE DATABASE restaurant_db;
   USE restaurant_db;

2. Import the SQL file into your environment.

3. Run the queries sequentially to explore insights.


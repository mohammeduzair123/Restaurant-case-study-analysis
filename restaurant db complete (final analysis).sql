use restaurant_db;
-- 1. View the menu_items table.
select * from menu_items;
-- 2. find the number of items on the menu.
select count(*) from menu_items;
-- 3. what are the least and most expensive items on the menu?
select * from menu_items
order by price;
select * from menu_items
order by price desc;
-- 4. How many Italian dishes are on the menu?
select count(*), category from menu_items
where category = "Italian";
-- 5. what are the least and most expensive Italian dishes on the menu?
select * from menu_items
where category = "Italian"
 order by  price desc limit 1;
---- 
select * from menu_items
where category = "Italian"
 order by  price asc limit 1;
-- 6. How many dishes are in each category?
select category, count(menu_item_id) as num_dishes from menu_items
group by category;
-- 7. what is the average dish price within each category? 
select category, avg(price) as avg_price from menu_items
group by category;

-------------------------------------------------------------------------------- 
-- 1. view the order_details table.
select * from order_details;
-- 2. what is the date range of the table?
select min(order_date), max(order_date) from order_details;
-- 3. how many items were ordered within this date range?
select count(distinct order_id) from order_details;
-- 4. how many items were ordered within this date range?
select count(*) from order_details;
-- 5. which orders had the most number of items?
select order_id, count(item_id) as number_items
from order_details
group by order_id
order by number_items desc;
-- 6. how many orders had more than 12 items?
select count(*) from 
(select order_id, count(item_id) as number_items
from order_details
group by order_id
having number_items > 12) as num_orders;

--------------------------------------------------------------------------------------------------

-- 1. combine the menu_items and order_details tables into a single table.
select * from menu_items;
select * from order_details;

select m.menu_item_id, m.item_name, m.category, m.price as price_of_item,
o.order_details_id, o.order_id, o.order_date, o.order_time 
from menu_items as m join order_details as o
 where m.menu_item_id = item_id;

-- 2. what were the least and most ordered items? what categories were they in ?
 select item_name, category, count(order_details_id) as num_purchases 
 from order_details as o left join menu_items as m
 on o.item_id = m.menu_item_id
group by item_name, category
order by num_purchases DESC; 
-- 3. what were the top 5 orders that spent the most money?
select order_id, sum(price) as total_spend
from order_details od left join menu_items as mi
on od.item_id = mi.menu_item_id
group by order_id
order by total_spend desc
limit 5;

-- 4. View the details of the highest spend order. what insights can you gather from the result?
select category, count(item_id) as num_items
from order_details od left join menu_items as mi
on od.item_id = mi.menu_item_id
where order_id = 440
group by category;

-- 5. view the details of the top highest spend orders. what insights can you gather from the results?
select order_id, category, count(item_id) as num_items
from order_details od left join menu_items as mi
on od.item_id = mi.menu_item_id
where order_id in (440, 2075, 1957, 330, 2675)
group by order_id, category;

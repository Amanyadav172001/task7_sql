select * from customer
select * from sales

---Total sales for each region

select c.region,
sum(s.sales)as "sum_sales"
from customer as c
inner join sales as s
on c.customer_id = s.customer_id
group by c.region

---The avg customer age for each city

select city,
avg (age) as "customer_age"
from customer
group by city

---The maximum profit for each product category
select * from sales
select * from product

select p.category,
max(profit)as "sales_profit"
from product as p
inner join sales as s
on p.product_id = s.product_id
group by p.category


---The count of sales for each state
select * from customer
select * from sales

select c.state,
count(s.sales) as "count_sales"
from customer as c
inner join sales as s
on c.customer_id = s.customer_id
group by c.state












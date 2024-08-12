-- 1) create a report of all state sales, quantity, discount , profit  with following aggregation ,
 -- sum , avg, min , max, count 

select * from customer
select * from sales

select c.state , sum(s.sales) as "sum_sales",
	avg(s.quantity) as "avg_quantity" ,
	min(s.discount) as "min_discount",
	max(s.profit) as "max_profit",
	count (s.sales) as "count_sales"
	from customer as c
	inner join sales as s
	on c.customer_id = s.customer_id
	group by c.state

-- 2) Data of all state and city's avg customer age

select state,
       city,
       avg (c.age) as "customer_age"
       from customer as c
       group by state,city

-- 3) Data of 2017 to 2018  with product name and sales per quantity

select *from product
select * from sales

select product_name,
       sum(sales)/sum(quantity) as "per quantity"
       from product as p
       inner join sales as s
       on p.product_id = s.product_id
where order_date between '01-01-2017' and  '12-31-2018'
group by product_name












# Top 5 best selling products in December 2019

select desc_product, sum(quantity) as total_quantity , paid_at from order_details  
join products  using(product_id)
join orders using(order_id) 
where paid_at between '2019-12-01' and '2019-12-31'
group by desc_product 
order by total_quantity desc
limit 5;

select * from orders

where created_at = '01/06/2019'

alter table orders add column realdate date;
update orders
set realdate = STR_TO_DATE(created_at, '%D-%M-%Y');
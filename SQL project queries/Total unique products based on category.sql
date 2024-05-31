#Unique products in products table
select * from products;
select  category, count(category) as unique_products from products
group by category
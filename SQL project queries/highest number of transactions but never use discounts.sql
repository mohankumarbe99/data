#Users with the highest number of transactions but never use discounts
 -- set  @@sql_mode  = (select replace (@@sql_mode, 'only_full_group_by', ''));
select user_id, nama_user, discount, count(total) as total from users
join orders on users.user_id = orders.buyer_id
group by user_id
having discount = 0
order by total desc
limit 5 
 

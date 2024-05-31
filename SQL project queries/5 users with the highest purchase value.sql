# Who are the 5 users with the highest purchase value?
select user_id, nama_user, sum(total) as total_price
from users
join orders on
users.user_id = orders.buyer_id
group by user_id 
order by total limit 5

/*select distinct user_ID, nama_user, total
from users
join orders
on (user_ID = buyer_id)
group by user_id
order by total desc limit 5; */

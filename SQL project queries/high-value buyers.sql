#Looking for high-value buyers
select users.nama_user, orders.buyer_id, count(paid_at) as transactions , sum(total) as Amount_paid, min(total) as Minimum_spent from orders
join users on users.user_id = orders.buyer_id
group by buyer_id
having count(users.nama_user) > 5 and  Minimum_spent > 2000000
order by transactions asc limit 5

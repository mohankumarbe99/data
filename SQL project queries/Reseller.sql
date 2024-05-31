#Reseller
select users.nama_user,buyer_id, count(buyer_id) as transactions, count(distinct orders.kodepos ) as Number_of_locations, avg(quantity) as average_transactions from orders
join users on users.user_id= orders.buyer_id
join order_details using(order_id)
group by buyer_id
having count(buyer_id) >= 8 and Number_of_locations >= 2 and avg(quantity) >= 10
order by average_transactions desc 

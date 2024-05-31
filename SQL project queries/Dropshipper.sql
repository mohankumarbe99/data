# Dropshipper
select users.nama_user,buyer_id, count(buyer_id) as transactions, count(distinct orders.kodepos ) as Number_of_different_locations from orders
join users on users.user_id= orders.buyer_id
group by buyer_id
having count(buyer_id) >= 10 and Number_of_different_locations >=10

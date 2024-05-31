 # percentage of paid, unpaid orders
with cte as (select count(order_id)/ (select count(order_id) from orders) *100 as Unpaid from orders where paid_at='na' ),
 cte1 as( select count(order_id)/ (select count(order_id) from orders) * 100 as Paid_Undelivered from orders where paid_at != 'NA' and delivery_at = 'NA'),
 cte2 as (select count(order_id)/ (select count(order_id) from orders) * 100 as Payment_completed_and_delivered from orders where paid_at != 'NA' and delivery_at != 'NA') ,
cte3 as(select count(order_id)/(select count(order_id) from orders) * 100 as deleiverd_on_same_date from orders where delivery_at = paid_at ),
  cte4 as (select count(order_id)/ (select count(order_id) from orders) * 100 as Pending_Payment_and_delivered from orders where paid_at = 'NA' and delivery_at = 'NA')
  select * from cte cross join cte1 cross join cte2 cross join cte3 cross join cte4





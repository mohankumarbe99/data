# updating status column in orders 

 select order_ID,  paid_at, delivery_at,
CASE
    WHEN paid_at != 'NA' and delivery_at != 'NA' then 'Completed'
    WHEN paid_at = 'NA' and delivery_at = 'NA' then 'Unpaid'
    WHEN paid_at != 'NA' and delivery_at = 'NA'then 'Paid & Undelivered'
    ELSE 'None'
END as status
from orders
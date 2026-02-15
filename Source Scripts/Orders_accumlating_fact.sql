WITH cte_order_tracking AS (
    SELECT [order_id], [1] AS orderReceived_date_id, [2] AS orderDelivered_date_id, [3] AS orderCancelled_date_id, [4] AS orderReturned_date_id
    FROM (
        SELECT [order_id], [status_id], [date_id]
        FROM [order_history]
    ) AS SourceTable
    PIVOT (
        MAX([date_id])
        FOR [status_id] IN ([1], [2], [3], [4])
    ) AS PivotTable
),
cte_last_status AS (
    SELECT order_id,
           status_id AS LastStatusID,
           date_id   AS LastStatusDate,
           ROW_NUMBER() OVER (PARTITION BY order_id ORDER BY date_id DESC) AS rn
    FROM order_history
)


select c.order_id, c.dest_address_id, c.shipping_method_id, c.date_id as order_date, c.customer_id, l.book_id, l.price, h.orderReceived_date_id, h.orderReturned_date_id, h.orderDelivered_date_id, h.orderCancelled_date_id, ls.LastStatusID
from cust_order c join order_line l
on c.order_id = l.order_id
join cte_order_tracking h
on c.order_id = h.order_id
JOIN cte_last_status ls
ON h.order_id = ls.order_id
WHERE ls.rn = 1;
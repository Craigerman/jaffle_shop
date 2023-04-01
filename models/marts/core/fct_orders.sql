with
orders as (select * from {{ ref("stg_orders") }}
),

payments as (select * from {{ ref("stg_payments") }}
),

order_amount as (
    select
        order_id,
        sum(case when status = 'success' then amount end) as amount
    from payments
    group by 1
),

final as (
    select
        orders.order_id,
        orders.customer_id,
        orders.order_date,
        coalesce(order_amount.amount, 0) as amount
    from orders
    left join order_amount on orders.order_id = order_amount.order_id
)

select *
from final

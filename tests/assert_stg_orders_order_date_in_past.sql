-- Orders should have occured in the past, so the order_date should always be today or earlier
-- Therefore return records where this isn't true to make the test fail.
with orders as (select * from {{ ref("stg_orders") }})

select 
    order_id

from orders

where order_date >= CURRENT_DATE()

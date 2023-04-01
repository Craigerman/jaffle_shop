-- Orders should have occured in the past, so the payment created_at should always be today or earlier
-- Therefore return records where this isn't true to make the test fail.
with payments as (select * from {{ ref("stg_payments") }})

select 
    payment_id

from payments

where created_at >= CURRENT_DATE()

{% docs payments_payment_method %}
	
One of the following values: 

| payment method | definition                            |
|----------------|---------------------------------------|
| coupon         | Jaffle shop coupon                    |
| gift_card      | Prepaid gift card                     |
| credit_card    | Customer credit card                  |
| bank_transfer  | ACH or other bank initiated transfer  |

{% enddocs %}

{% docs payments_status %}
	
One of the following values: 

| status    | definition                  |
|-----------|-----------------------------|
| fail      | Payment declined            |
| success   | Successful transaction      |

{% enddocs %}
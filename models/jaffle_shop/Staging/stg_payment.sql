{{ config(materialized='table') }}
select *,{{cents_to_dollars('AMOUNT')}} as dollar_amount from raw.stripe.payment
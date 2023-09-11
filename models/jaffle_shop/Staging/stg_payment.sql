{{ config(materialized='table',database='QWT_ANALYTICS', schema='staging') }}
select * from raw.stripe.payment
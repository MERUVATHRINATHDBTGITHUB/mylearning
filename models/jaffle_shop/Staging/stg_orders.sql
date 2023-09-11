{{ config(materialized='table',database='QWT_ANALYTICS', schema='staging') }}
select * from raw.jaffle_shop.orders


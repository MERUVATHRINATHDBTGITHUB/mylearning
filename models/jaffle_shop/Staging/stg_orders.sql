{{ config(materialized='table',database='JS_PROD_ANALYTICS', schema='staging') }}
select * from raw.jaffle_shop.orders


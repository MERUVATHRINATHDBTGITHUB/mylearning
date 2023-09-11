{{config(materialized='view', schema='Reporting')}}

select * from {{ref('Trf_order_payment_method_amounts')}}
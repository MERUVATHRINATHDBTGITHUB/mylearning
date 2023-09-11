{{config(materialized='view', schema='Reporting')}}

select * from {{ref('Trf_customerorders')}}


{{config(materialized='view', schema='Reporting')}}

  select
       *
    from {{ ref('trf_customers') }}
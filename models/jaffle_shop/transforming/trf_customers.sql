{{config(materialized='table', schema='Transforming')}}

  select
        id as cust_id,
       concat('first_name','last_name') as full_name
       

    from {{ ref('stg_customers') }}
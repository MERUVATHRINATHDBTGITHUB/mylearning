{{ config(materialized='incremental',schema='TRANSFORMING' ,unique_key='id')}}

select * from {{ref('stg_orders')}}

{% if is_incremental() %}

  -- this filter will only be applied on an incremental run
  where _ETL_LOADED_AT > (select max(_ETL_LOADED_AT) from {{ this }})

{% endif %}

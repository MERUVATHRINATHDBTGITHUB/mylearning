{{ config(materialized='table') }}

 select * from {{env_var ('DBT_Source_Database','raw')}}.jaffle_shop.{{env_var ('DBT_Source_Table','customers')}}

where id>={{var('custid',40) }}
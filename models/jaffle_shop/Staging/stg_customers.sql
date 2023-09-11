{{ config(materialized='table', database='QWT_ANALYTICS', schema='staging',
    pre_hook="insert into ANALYTICS.Auditing.dbtmodelsaudit(modelname,model_starttime,model_endtime)
     values ('{{this}}',current_timestamp(),null);",
     post_hook = "update ANALYTICS.Auditing.dbtmodelsaudit

 set MODEL_ENDTIME=current_timestamp where MODELNAME='{{this}}'

 ") }}

 select 
  {{dbt_utils.generate_surrogate_key(['id','first_name','last_name']) }} as cust_hash_id,
 * from raw.jaffle_shop.customers



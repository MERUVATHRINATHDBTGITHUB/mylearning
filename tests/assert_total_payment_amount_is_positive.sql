select orderid,status,amount
from {{ref('stg_payment')}}
where 
amount<0
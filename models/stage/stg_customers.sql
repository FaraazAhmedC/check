with customer as (select * from {{ source("store", "Customer") }}) 


select * from customer

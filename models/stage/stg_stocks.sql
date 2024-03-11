with stonk as (SELECT * FROM {{ source('store', 'Stock') }})

select * from stonk
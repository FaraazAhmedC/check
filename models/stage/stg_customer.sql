with

    source as (
        select * from {{ source("public", "CUSTOMER") }}
        ),

    transformed as (
        select 
        customerid ,
        firstname ,
        lastname ,
        email
        from source 
    )

select *from transformed
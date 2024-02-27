with

    source as (
        select * from {{ source("public", "CUSTOMER") }}
        ),

    transformed as (
        select 
        customerid,
        firstname,
        email
        from source 
    )

select *from transformed
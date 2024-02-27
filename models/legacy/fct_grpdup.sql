with
    connecting as (select * from {{ ref('int_naming') }}),
    groupe as (
        select 
        connecting.fname ,
        connecting.mail
    from connecting
    )
    select * from groupe
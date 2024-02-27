with
    name as (select * from {{ ref('stg_customer') }}),
    
    finale as (
        select name.firstname as fname,
        name.email as mail 
        from name
    )
        
select * from finale
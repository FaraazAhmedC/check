with
-- Create a temporary named reference to the "stg_customer" model/table
    name as (select * from {{ ref('stg_customer') }}),
    
    finale as (
        -- Select specific columns from the "name" CTE
        -- with renamed aliases for better readability
        select CONCAT(name.firstname,' ',name.lastname) as name ,
        name.email as mail        
        from name
    ),
    fill as (
        select name.lastname as lname from name
    )
    
-- Select all columns from the "finale" CTE    
select * from finale
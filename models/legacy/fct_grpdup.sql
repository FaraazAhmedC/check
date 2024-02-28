with
    connecting as (select * from {{ ref('int_naming') }}),
    groupe as (
        select 
        connecting.lname ,
        connecting.fname ,
        connecting.mail 
        FROM connecting
  GROUP BY connecting.lname
  HAVING COUNT(*) > 1
    
    )
    select * from groupe
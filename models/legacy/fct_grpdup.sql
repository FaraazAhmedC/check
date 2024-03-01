with
    connecting as (select * from {{ ref("int_naming") }}),
    groupe as (
        select connecting.lname as filtered_lastname, count(*) as name_count
        from connecting
        group by connecting.lname
        having count(*) > 1

    )
select *
from groupe
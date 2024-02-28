with
    connecting as (select * from {{ ref("int_naming") }}),
    groupe as (
        select *
        from connecting
        where connecting.lname count(*) > 1

    )
select *
from groupe

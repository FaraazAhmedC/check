with transactions as(
    SELECT * FROM {{ source('store', 'Transaction') }}
)

SELECT * FROM transactions
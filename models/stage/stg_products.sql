with products as(
    SELECT * FROM {{ source('store', 'Product') }}
)

SELECT * FROM products
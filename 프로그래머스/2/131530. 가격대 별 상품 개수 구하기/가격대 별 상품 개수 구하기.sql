SELECT
    TRUNCATE(price, -4) price_group,
    COUNT(product_id) products
FROM
    product
GROUP BY
    1
ORDER BY
    1;
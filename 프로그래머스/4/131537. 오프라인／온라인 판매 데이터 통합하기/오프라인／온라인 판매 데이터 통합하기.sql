select * from(
    select to_char(SALES_DATE, 'yyyy-mm-dd') sales_date, product_id, user_id, sales_amount
    from online_sale
    where to_char(SALES_DATE, 'yyyy-mm') = '2022-03'
    union
    select to_char(SALES_DATE, 'yyyy-mm-dd') sales_date, product_id, null user_id, sales_amount
    from offline_sale
    where to_char(SALES_DATE, 'yyyy-mm') = '2022-03'
)
order by sales_date, product_id, user_id;
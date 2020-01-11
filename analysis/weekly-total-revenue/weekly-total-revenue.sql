SELECT extract(week from sale_date) AS week_number, 
    concat('Week ', cast(extract(week from sale_date) as character varying)) AS week_in_the_year, 
    SUM(total_sell_price) AS total_revenue
FROM sales AS s
    LEFT JOIN sales_item AS si
        ON s.id = si.sale_id
WHERE extract(year from sale_date) = 2019
GROUP BY week_number
ORDER BY week_number
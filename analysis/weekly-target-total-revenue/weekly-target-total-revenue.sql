WITH weekly_target_in_dollars AS (
    select 1000 as val
),
dollar_to_cedis_rate AS (
    select 5 as val
)

SELECT extract(week from sale_date) AS week_number, 
    concat('Week ', cast(extract(week from sale_date) as character varying)) AS weeks_with_total_revenue_higher_than_weekly_target, 
    SUM(total_sell_price) AS total_revenue
FROM sales AS s
    LEFT JOIN sales_item AS si
        ON s.id = si.sale_id
GROUP BY week_number
    HAVING SUM(total_sell_price) > ((SELECT * from dollar_to_cedis_rate ) * (SELECT * from weekly_target_in_dollars))
ORDER BY week_number
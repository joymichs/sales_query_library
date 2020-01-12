SELECT date_trunc('day', sale_date) AS date, SUM(total_sell_price) AS total_revenue
FROM sales AS s
    LEFT JOIN sales_item AS si
        ON s.id = si.sale_id
GROUP BY date
ORDER BY date
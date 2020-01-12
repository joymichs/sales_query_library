SELECT extract(month from sale_date) AS month_number, 
    concat('month ', cast(extract(month from sale_date) as character varying)) AS months_with_total_revenue_higher_than_yearly_average, 
    SUM(total_sell_price) AS total_revenue
FROM sales AS s
    LEFT JOIN sales_item AS si
        ON s.id = si.sale_id
WHERE extract(year from sale_date) = 2019
GROUP BY month_number
    HAVING SUM(total_sell_price) > (SELECT (SUM(total_sell_price)/12) 
		FROM sales AS s
		LEFT JOIN sales_item AS si
			ON s.id = si.sale_id
		WHERE extract(year from s.sale_date) = 2019)
ORDER BY month_number
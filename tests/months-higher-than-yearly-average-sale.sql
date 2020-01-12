with test_month AS (
    select 1 as test_month
),
months_with_sales as (
	SELECT extract(month from sale_date) AS month_number
		FROM sales AS s
			LEFT JOIN sales_item AS si
				ON s.id = si.sale_id
		WHERE extract(year from sale_date) = 2019
		GROUP BY month_number
		ORDER BY month_number
),
expected_value AS (SELECT SUM(si.total_sell_price)
	FROM sales AS s
	LEFT JOIN sales_item AS si
	ON s.id = si.sale_id
	WHERE extract(year from s.sale_date) = 2019
	AND extract(month from s.sale_date) = (select * from test_month)
),
actual_value AS (SELECT (SUM(total_sell_price)/12) 
	FROM sales AS s
	LEFT JOIN sales_item AS si
		ON s.id = si.sale_id
	WHERE extract(year from s.sale_date) = 2019
)

select concat( 
'Test that the month 1 total revenue value returned for 2019 returned is higher than the yearly average sale: ', 
   case when (select * from months_with_sales where month_number = (select * from test_month)) = (select * from test_month)
	and (select * from expected_value) > (select * from actual_value)
  		then 'passed' else 'failed' end
  ); 
with test_week AS (
    select 1 as test_week
),
weeks_with_sales as (
	SELECT extract(week from sale_date) AS week_number
		FROM sales AS s
			LEFT JOIN sales_item AS si
				ON s.id = si.sale_id
		WHERE extract(year from sale_date) = 2019
		GROUP BY week_number
		ORDER BY week_number
),
expected_value AS (SELECT SUM(si.total_sell_price)
	FROM sales AS s
	LEFT JOIN sales_item AS si
	ON s.id = si.sale_id
	WHERE extract(year from s.sale_date) = 2019
	AND extract(week from s.sale_date) = (select * from test_week)
),
actual_value AS (
select sum(si.total_sell_price)
		from sales as s
		inner join sales_item as si
		on s.id = si.sale_id
		where extract(week from s.sale_date) = (select * from test_week)
		 AND extract(year from s.sale_date) = 2019
)

select concat( 
'Test that the week 1 total revenue value for 2019 returned is correct: ', 
   case when (select * from weeks_with_sales where week_number = (select * from test_week)) = (select * from test_week)
	and (select * from expected_value) = (select * from actual_value)
  		then 'passed' else 'failed' end
  ); 
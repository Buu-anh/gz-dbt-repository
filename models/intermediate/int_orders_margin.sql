SELECT
	orders_id,
	date_date,
	ROUND(SUM(revenue),2) as revenue,
	ROUND(SUM(quantity),2) as quantity,
	ROUND(SUM(SAFE_CAST(purchase_price as FLOAT64)),2) as purchase_cost,
	ROUND(SUM((revenue - SAFE_CAST(purchase_price as FLOAT64))),2) as margin
FROM {{ ref("int_sales_margin") }}
GROUP BY orders_id,date_date
ORDER BY orders_id DESC
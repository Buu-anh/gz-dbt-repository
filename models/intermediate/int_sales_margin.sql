SELECT*
,SAFE_CAST(purchase_price as FLOAT64) as purchase_cost
,(revenue - SAFE_CAST(purchase_price as FLOAT64)) AS margin
FROM
{{ref("stg_raw__product")}}
LEFT JOIN
{{ref('stg_raw__sales')}}
USING(products_id)
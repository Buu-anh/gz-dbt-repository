SELECT
DATE_TRUNC(date_date, MONTH) as month
,avg(operational_margin-ads_cost) as ads_margin
,SUM(margin) as margin
,SUM(logcost) as logcost
,SUM(revenue) as revenu
,SUM(average_basket) as average_basket
,SUM(operational_margin) as operational_margin
,SUM(purchase_cost) as purchase_cost
,SUM(shipping_fee) as shipping_fee
FROM {{ref("finance_days")}}
LEFT JOIN {{ref("int_campaigns_day")}}
USING(date_date)
GROUP BY month
ORDER BY month
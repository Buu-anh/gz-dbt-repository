SELECT*
, (operational_margin-ads_cost) as ads_margin
FROM {{ref("finance_days")}}
LEFT JOIN {{ref("int_campaigns_day")}}
USING(date_date)
SELECT*
FROM{{ref("stg_raw__ads")}}
UNION ALL
SELECT*
FROM{{ref("stg_raw__bing")}}
UNION ALL
SELECT*
FROM{{ref("stg_raw__criteo")}}
UNION ALL
SELECT*
FROM{{ref("stg_raw__fb")}}
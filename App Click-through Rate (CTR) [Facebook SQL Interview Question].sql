/* the link for this Question: https://datalemur.com/questions/click-through-rate */
SELECT app_id , 

  /* to get the CTR we counted the number of impressions and clicks separately then used the eqaution very straightforward */
ROUND( 100.0 * COUNT(event_type) filter (where event_type = 'click') /
COUNT(event_type) filter (where event_type = 'impression') ,2)

FROM events
WHERE timestamp BETWEEN '2022-01-01' AND '2022-12-31'
GROUP BY app_id;


/* the link for this question : https://datalemur.com/questions/laptop-mobile-viewership 

there is many ways to solve this question however i find the solution given by the website to be easy to understand and use later on */


SELECT
COUNT(user_id) filter(WHERE device_type in  ('tablet','phone' )) AS mobile_views ,
COUNT(user_id) filter(WHERE device_type in  ('laptop' )) AS laptop_views 

from viewership 
/* i tried to use where but i couldn't know how to count in the select part ,so filter was realy just all i was need to simplify the work */

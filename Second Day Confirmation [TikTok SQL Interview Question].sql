/* the link for this question : https://datalemur.com/questions/second-day-confirmation


the problem is simple if you know extract() , I first work around the tables making sure the logic i am building is correct ,then at the end it worked 
*/

SELECT
user_id
FROM emails e LEFT JOIN texts t on e.email_id = t.email_id
 
WHERE EXTRACT(day FROM  action_date ) -
EXTRACT(day FROM  signup_date )= 1
;

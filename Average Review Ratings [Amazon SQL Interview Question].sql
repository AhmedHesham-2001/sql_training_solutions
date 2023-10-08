/* this is the solution to the "Average Review Ratings [Amazon SQL Interview Question]"

the link to this Question : https://datalemur.com/questions/sql-avg-review-ratings

the main keywords to this problem is EXTRACT and avg */


SELECT EXTRACT(month FROM submit_date) as mnth, product_id , ROUND(AVG(stars), 2) AS avg_stars FROM reviews
GROUP BY  EXTRACT(month FROM submit_date), product_id
ORDER BY mnth , product_id;

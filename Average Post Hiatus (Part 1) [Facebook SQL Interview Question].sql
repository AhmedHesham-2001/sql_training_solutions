/* this is the solution to the "Average Post Hiatus (Part 1) [Facebook SQL Interview Question]"

the link to this Question : https://datalemur.com/questions/sql-average-post-hiatus-1

the main keywords to this problem : DATE_PART , min(),max() ,HAVING */


SELECT user_id ,DATE_PART('Day' , MAX(post_date)-MIN(post_date)) as days_between
FROM posts 
WHERE DATE_PART('year', post_date::DATE) = 2021 

GROUP BY user_id
HAVING COUNT(post_id)>1;
;



/* this is the solution to the "Histogram of Tweets [Twitter SQL Interview Question]"
the link to this Question : https://datalemur.com/questions/sql-histogram-tweets
the main keywords to this problem is subquery and between for dates */

SELECT 
  tweet_count_per_user AS tweet_bucket, 
  COUNT(user_id) AS users_num FROM(
  /* this subquery work on making a table that contains userid and the numbers of tweets each user made in 2022
  so we pick from that table the count of every user who made the same number of tweets */
SELECT user_id,COUNT(tweet_id) as tweet_count_per_user 
FROM tweets
WHERE tweet_date BETWEEN '2022-01-01'
AND '2022-12-31'
GROUP BY user_id)as total_tweets
GROUP BY tweet_count_per_user;

/* this is the solution to the "Cities With Completed Trades [Robinhood SQL Interview Question]"

the link to this Question : https://datalemur.com/questions/completed-trades

the main keywords to this problem is INNER JOIN */

/* this one was very full of error for me i tried first to use "with" to make a temp table and it worked fine
till i got 2 different rows for  San Francisco	that splits the orders between the two rows */

/* this code not working if you try it you will find that San Francisco wasn't grouped by and the orders didnt sum up to 4 as it should */
  /*
        with mytable AS (SELECT user_id ,COUNT(order_id) as orders from trades 
        where status = 'Completed'
        GROUP BY user_id)
        
        SELECT city , SUM(orders) from mytable join users on mytable.user_id = users.user_id
        GROUP BY city , orders 
        
        ORDER BY SUM(orders) DESC
        limit 3
;*/

/* after searching and reading i found inner join as helpful for the case and it worked fine */
SELECT 
  users.city, 
  COUNT(trades.order_id) AS total_orders 
FROM trades 
INNER JOIN users 
  ON trades.user_id = users.user_id 
WHERE trades.status = 'Completed' 
GROUP BY users.city 
ORDER BY total_orders DESC
LIMIT 3;


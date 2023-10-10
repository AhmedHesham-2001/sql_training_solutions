/* the link for this question : https://datalemur.com/questions/sql-page-with-no-likes

this question looks simple at first but i had error that i didn't know how to fix 

the error : function round(double precision, integer) does not exist (LINE: 1)
the solution was very simple cast the item_count to decimal or numeric 

*/


SELECT ROUND(sum(item_count :: numeric *order_occurrences)/SUM(order_occurrences) ,1) 
  FROM items_per_order;

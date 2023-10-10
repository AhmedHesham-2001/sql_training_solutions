/* the link for the part 1 question : https://datalemur.com/questions/top-profitable-drugs

this series is realy a great refrasher 
straightforward question total_profit = total_sales-cogs and pick the top 3 
*/
SELECT drug ,total_sales -cogs as total_profit FROM pharmacy_sales

ORDER BY total_profit DESC
limit 3;


/* the link for the part 2 question : https://datalemur.com/questions/non-profitable-drugs

picky with the format 
*/
SELECT manufacturer ,COUNT(drug) as drug_count,
ABS(SUM(total_sales - cogs)) as total_loss   

FROM pharmacy_sales
where total_sales  -cogs<=0
GROUP BY manufacturer
ORDER BY total_loss DESC;

/* the link for the part 3 question : https://datalemur.com/questions/total-drugs-sales

picky with the format again 
*/

SELECT manufacturer , 
concat('$', ROUND(SUM(total_sales) / 1000000) :: TEXT, ' million')  AS sale
FROM pharmacy_sales
GROUP BY manufacturer
ORDER BY SUM(total_sales) DESC;

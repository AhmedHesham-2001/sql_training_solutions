/* the link for this question : https://datalemur.com/questions/cards-issued-difference

i feel bad for how simple this one is , it took me time cause i overcomplicated 

*/
SELECT card_name, MAX(issued_amount)-min(issued_amount)as gap FROM monthly_cards_issued


GROUP BY card_name
ORDER BY gap DESC;

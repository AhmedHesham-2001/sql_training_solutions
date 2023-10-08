/* the link for this question : https://datalemur.com/questions/sql-page-with-no-likes

keywords : left join

*/


SELECT p.page_id
FROM
    (pages  p
    LEFT JOIN page_likes l
        ON l.page_id = p.page_id)
  /* we did left joint because we want to make sure that all web pages will exist in the table 
  and in case the page doesn't have likes then it will have null in the l.page_id that the page we want */
WHERE
    l.page_id IS NULL
    AND p.page_id IS NOT NULL

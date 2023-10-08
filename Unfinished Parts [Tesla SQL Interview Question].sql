/* the link : https://datalemur.com/questions/tesla-unfinished-parts


This question is straightforward, so let's approach it with simplicity in both thinking and solution */

SELECT part , assembly_step FROM parts_assembly
WHERE finish_date is NULL
;

/*the link for this question: https://datalemur.com/questions/matching-skills

the keywords for this question :subquery , IN () */


SELECT candidate_id 
FROM(
      SELECT candidate_id, COUNT(candidate_id) as num_req FROM candidates
      WHERE skill in ('Python',	'Tableau',	'PostgreSQL')
      GROUP BY candidate_id
      ) as counter
WHERE num_req = 3;

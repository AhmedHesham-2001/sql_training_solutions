
/* this is the solution to the "Duplicate Job Listings [Linkedin SQL Interview Question]"

the link to this Question : https://datalemur.com/questions/duplicate-job-listings

the main keywords to this problem is subquery and GROUP BY */
SELECT 
  COUNT(DISTINCT company_id) AS duplicate_companies
FROM (
SELECT 
  company_id,
  COUNT(job_id) AS job_count
FROM job_listings
GROUP BY company_id, title, description
) AS duplicate_count
WHERE job_count > 1

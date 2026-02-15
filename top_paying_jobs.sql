SELECT 
job_title_short,
salary_year_avg,
job_location,
job_posted_date::date,
job_via
FROM (

SELECT*
FROM january_job

UNION ALL

SELECT*
FROM february_job

UNION ALL

SELECT* 
from march_job

) as quarter1_job_postings


WHERE quarter1_job_postings.salary_year_avg>70000 AND
      quarter1_job_postings.job_title_short= 'Data Analyst'
      ORDER BY salary_year_avg DESC
SELECT*
from(--subquery starts here
SELECT* FROM job_postings_fact 
WHERE EXTRACT(MONTH from job_posted_date) =1
) as january_jobs 
--subquery ends here
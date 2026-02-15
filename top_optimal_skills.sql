with march_jobs as (SELECT* from job_postings_fact
where EXTRACT(MONTH FROM job_posted_date)=3
)
SELECT* FROM march_jobs;
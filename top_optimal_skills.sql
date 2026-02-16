/* question: what are the most optimal skills to learn(aka it is in high demand and also high paying)
-identify skills in high demand and associated with high average salaries for data analyst roles
- concentrate on remote positions with specified salaries
- why? targets skills that offer job security(high demand) and financial benefits(high salaries)
offering stratigic insights for career development in data analysis
*/

with skills_demand as(

    SELECT
        skills_dim.skill_id,
        skills_dim.skills,
        count(skills_job_dim.job_id) as demand_count
    FROM 
        job_postings_fact
    INNER JOIN skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
    WHERE
        job_title_short = 'Data Analyst' AND
        salary_year_avg IS NOT NULL AND
        job_work_from_home = True
    GROUP BY
        skills_dim.skill_id
),

average_salary as(

    SELECT
        skills_job_dim.skill_id,
    round(avg(salary_year_avg),0) as avg_salary

    FROM 
        job_postings_fact
    INNER JOIN skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
    WHERE
        job_title_short = 'Data Analyst' AND
        salary_year_avg IS NOT NULL AND
        job_work_from_home = True
    GROUP BY
        skills_job_dim.skill_id
)

SELECT
    skills_demand.skill_id,
    skills_demand.skills,
    demand_count,
    avg_salary
FROM
    skills_demand
INNER JOIN average_salary on skills_demand.skill_id = average_salary.skill_id 
ORDER BY 
    demand_count DESC,
    avg_salary DESC
LIMIT 25
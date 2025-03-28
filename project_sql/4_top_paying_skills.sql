SELECT
    skills_dim.skills,
    round(AVG(salary_year_avg), 0) AS avg_salary_skill
FROM job_postings_fact

INNER JOIN skills_job_dim
    ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim
    ON skills_job_dim.skill_id = skills_dim.skill_id

WHERE job_title_short = 'Data Analyst'
    AND salary_year_avg IS NOT NULL

GROUP BY skills_dim.skills

ORDER BY avg_salary_skill DESC

LIMIT 25
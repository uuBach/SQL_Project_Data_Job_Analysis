WITH top_paying_jobs AS
(
SELECT
dim.name,
job_id,
job_title,
salary_year_avg
FROM
job_postings_fact
LEFT JOIN company_dim AS dim 
ON dim.company_id = job_postings_fact.company_id
WHERE
job_title_short = 'Data Analyst'
AND job_location = 'Anywhere'
AND salary_year_avg IS NOT NULL
ORDER BY
salary_year_avg DESC
LIMIT 10
)

SELECT 
top_paying_jobs.*,
skills_dim.skills
FROM top_paying_jobs
INNER JOIN skills_job_dim ON skills_job_dim.job_id = top_paying_jobs.job_id
INNER JOIN skills_dim ON skills_dim.skill_id = skills_job_dim.skill_id

/* 
🔍 Key Observations
Most Demanded Skills:
1.SQL (8 mentions): Continues to be foundational—appears in nearly every listing. It’s essential for querying and managing structured data in relational databases.
2.Python (7 mentions): Close behind SQL, it’s favored for data wrangling, statistical analysis, and machine learning, showing the growing expectation for analysts to perform more advanced analytics.
3.Tableau (6 mentions): Visualization remains a top priority, and Tableau is leading among tools. Hiring teams clearly value communicative clarity in data presentation.
*/
SELECT
skills_dim.skills,
skills_salary.avg_salary
FROM skills_dim
INNER JOIN 
(SELECT 
skills_job_dim.skill_id,
ROUND(AVG(job_postings_fact.salary_year_avg), 2) AS avg_salary
FROM skills_job_dim
INNER JOIN job_postings_fact 
ON job_postings_fact.job_id = skills_job_dim.job_id
WHERE
job_postings_fact.salary_year_avg IS NOT NULL
AND job_title_short = 'Data Analyst'
GROUP BY
skills_job_dim.skill_id) AS skills_salary
ON skills_salary.skill_id = skills_dim.skill_id
ORDER BY
skills_salary.avg_salary DESC
LIMIT 25

/*
High-paying data analyst roles favor specialization in machine learning (e.g., DataRobot, MXNet, PyTorch), cloud/data engineering tools (e.g., Terraform, Kafka, Snowflake), and niche programming (e.g., Golang, Solidity).
DevOps and ML infrastructure skills (e.g., GitLab, Ansible, Hugging Face) consistently command >$120K, reflecting growing demand for scalable, production-ready analytics systems.
Traditional tools like Tableau, Power BI, Excel appear lower in pay, signaling that common or entry-level skills offer less salary leverage compared to emerging or specialized tech.
*/